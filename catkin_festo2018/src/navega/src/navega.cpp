// https://github.com/CoppeliaRobotics/v_repExtRosInterface
// https://github.com/CoppeliaRobotics/ros_bubble_rob2
// https://github.com/CoppeliaRobotics/vrep_plugin_skeleton
// https://github.com/CoppeliaRobotics/vrep_skeleton_msg_and_srv

#include "ros/ros.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/Point.h"
#include "geometry_msgs/Pose.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/PoseWithCovariance.h"
#include "std_msgs/Bool.h"

#include <string>
#include <cmath>

#define VMed	            7.0
#define VRot                1.0
#define VBaixa	            3.0
#define DistSensor          0.25
#define DistSensorZero      0.35
#define DistComDisco        0.28


#define offx	VMed/2
#define offDiag	0.3
#define	offS1	0.4
#define	offS2	0.2
#define	offS7	0.2
#define	offS8	0.4


geometry_msgs::Pose coord[2];
float delX, delY, diag, dif_ang_z, dif_ang_w;
geometry_msgs::Point32 distancia[9];
bool comecar;

void dist(const sensor_msgs::PointCloud::ConstPtr& sensor){
	for (int i = 0; i < 9; ++i) distancia[i] = sensor->points[i];
}

void pega_pos(const geometry_msgs::Pose& pos){
    coord[1] = pos;
}

void odometria(const nav_msgs::Odometry::ConstPtr& odom){
    coord[0] = odom->pose.pose;
}

void start(const std_msgs::Bool& strt){
    comecar = strt.data;
}

int main(int argc, char **argv){
	ros::init(argc, argv, "navega");

	ros::NodeHandle nh;

	geometry_msgs::Twist vel;
    

	ros::Subscriber od = nh.subscribe("/odom", 10, odometria);
    ros::Subscriber recebe_coord = nh.subscribe("destino", 100, pega_pos);
    ros::Subscriber start_nav = nh.subscribe("init_nav", 1, start);
    ros::Subscriber sub_dist = nh.subscribe("distance_sensors", 10, dist);

	ros::Publisher chat_publisher = nh.advertise<geometry_msgs::Twist>("cmd_vel", 10);
    ros::Publisher end_nav = nh.advertise<std_msgs::Bool>("end_nav", 1);
    ros::Publisher pos = nh.advertise<geometry_msgs::Pose>("/destino", 1);
    

    bool flag, terminou, desvia;
	float vel_x = 1, vel_y = 1, vel_diag;
    float coord_x, coord_y, real_dist, real_dist_ZERO;

    vel.linear.x = vel_x;
    vel.linear.y = vel_y;
    chat_publisher.publish(vel);
    sleep(.5);
    std::cout << "Pronto!" << std::endl;

    std_msgs::Bool retorno;

	ros::Rate loop_rate(100);
    while(ros::ok()){
        flag = 0;
        
        terminou = 0;
        retorno.data = terminou;
        
        // std::cout << "Destino:" << std::endl << "  X: ";
        // std::cin >> coord_x;
        // coord[1].position.x = coord_x;
        // std::cout << "  Y: ";
        // std::cin >> coord_y;
        // coord[1].position.y = coord_y;
    //------------------- Espera enquanto n é autorizado -----------------------
        while(!comecar){
            std::cout << comecar << std::endl;
            ros::spinOnce();
        }
        std::cout << "OK!" << std::endl;
        std::cout << coord[1] << std::endl;
    //------------------- Começa navegação -----------------------
        while(flag == 0){
            std::cout << coord[1].position.x << "\t" << coord[1].position.y << std::endl;


            delX = coord[1].position.x - coord[0].position.x; 
            delY = coord[1].position.y - coord[0].position.y; 
            // std::cout << coord[0].position.x << "\t" << coord[0].position.y << std::endl;

            if(delX > 0 && delX < 0.0001) delX = 0;
            if(delY > 0 && delY < 0.0001) delY = 0;
            if(delX < 0 && delX > -0.0001) delX = 0;
            if(delY < 0 && delY > -0.0001) delY = 0;

            diag = sqrt((delX * delX) + (delY * delY));
            if(diag > 0.5) vel_diag = VMed;
            else vel_diag = VBaixa;
            if(diag == 0){
                vel_x = 0;
                vel_y = 0;
            }
            else{
                if((!(delX > 0 && delX < 0.00001) || !(delX < 0 && delX > -0.00001)) )vel_x = vel_diag * delX / diag;
                else vel_x = 0;
                if((!(delY > 0 && delY < 0.00001) || !(delY < 0 && delY > -0.00001)) )vel_y = vel_diag * delY / diag;
                else vel_y = 0;
            }
            std::cout << "vel_diag: " << vel_diag << std::endl;


            vel.linear.x = vel_x;
            vel.linear.y = vel_y;


            //----------------------------- Chegou (com erro permitido) -----------------------

            if (diag <= 0.1 && vel_x != 0 && vel_y != 0){
                vel.linear.x = 0;
                vel.linear.y = 0;            
                flag = 1;
                // dif_ang_w = coord[1].orientation.w - coord[0].orientation.w;
                // dif_ang_z = coord[1].orientation.z - coord[0].orientation.z;
                
                // if (dif_ang_w <= 0.1 && dif_ang_z <= 0.1 && vel_diag != 0) vel.angular.z = 0;
            }
            
            chat_publisher.publish(vel);

        
            //----------------------------- Verifica distância --------------------

            for(int i = 0; i < 9; ++i){
                real_dist = sqrt((distancia[i].x * distancia[i].x ) + (distancia[i].y * distancia[i].y));
                real_dist_ZERO = sqrt((distancia[0].x * distancia[0].x ) + (distancia[0].y * distancia[0].y));
                if(i == 0){ // Ignorar quando estiver com disco
                    // if(real_dist < DistComDisco);
                    /*else*/ if(real_dist < DistSensorZero && real_dist != 0){
                        std::cout << "Sensor " << i << "\t" << real_dist << std::endl;
                        vel.linear.x = 0;
                            vel.linear.y = 0;
                        chat_publisher.publish(vel);
                        desvia = 1;
                    }
                    else desvia = 0;
                }
                else{
                    if(real_dist < DistSensor && real_dist != 0){
                        if((distancia[i].x > 0 && vel_x > 0) || (distancia[i].y > 0 && vel_y > 0)){
                            std::cout << "Sensor " << i << "\t" << real_dist << "  " << real_dist_ZERO << std::endl;
                            vel.linear.x = 0;
                            vel.linear.y = 0;
                            chat_publisher.publish(vel);
                            desvia = 1;
                        }
                    }
                    else desvia = 0;
                }
            }
            if (desvia == 1){
                vel_x = VMed - offx * distancia[0].x - offDiag * distancia[8].x - offDiag * distancia[1].x;
		        vel_y = -offS1 * distancia[1].y - offS2 * distancia[2].y + offS8 * distancia[8].y + offS7 * distancia[7].y;
                vel.linear.x = vel_x;
                            vel.linear.y = vel_y;
                            chat_publisher.publish(vel);
            }
            

            //--------------------------------------------------------------------------------------

            std::cout << coord[1].position.x << "\t" << coord[0].position.x << "\t" << desvia << "\t" << vel.linear.x << std::endl;
            std::cout << coord[1].position.x << "\t" << coord[0].position.y << "\t" << vel.linear.y << std::endl;

            // vel.linear.x = vel_x;
            // vel.linear.y = vel_y;

            

            ros::spinOnce();
            loop_rate.sleep();
        }
    terminou = 1;
    retorno.data = terminou;
    end_nav.publish(retorno);
    ros::spinOnce();
    }
}