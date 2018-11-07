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
#include "std_msgs/Int8.h"
#include "std_msgs/Float32.h"
#include <math.h> 
#include <unistd.h>

#include <string>
#include <cmath>

#define VMed	4.0


geometry_msgs::Pose coord[2];
float ang;

void pega_ang(const std_msgs::Float32::ConstPtr& msg){
    ang = msg->data;
}

void odometria(const nav_msgs::Odometry::ConstPtr& odom){
    coord[0] = odom->pose.pose;
    // std::cout << odom->pose.pose.position.x << std::endl;
    // std::cout << coord[0].position.x << "\t" << coord[0].position.y << std::endl;
}

int main(int argc, char **argv){
	ros::init(argc, argv, "navega");

	ros::NodeHandle nh;

	geometry_msgs::Twist vel;
    std_msgs::Int8 terminou_girar;
    
    ros::Subscriber ent = nh.subscribe("gira_angulo", 1000, pega_ang);
	ros::Subscriber od = nh.subscribe("/odom", 1000, odometria);
    ros::Publisher vel_pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1);


	ros::Publisher chat_publisher = nh.advertise<std_msgs::Int8>("girou", 1);

    float cos_atual = coord[0].orientation.z;
    float sen_atual = coord[0].orientation.w;
    float angulo = acos(cos_atual);
    float angulo_destino = ang + angulo;

    // ros::Publisher send_flag = nh.advertise<>("decisao", 1);
    
    ros::Rate loop_rate(10);

    // while(ros::ok()){
    //     printf("%f\n",ang);
    //     if (ang != 0){
    //         if(ang < 0){
    //             vel.angular.z = -0.3; 
    //             vel_pub.publish(vel);
    //             sleep(100);
    //         }else if(ang > 0){
    //             printf("Angulo atual: %f\n",acos(coord[0].orientation.z)*180/3.1415);
    //             printf("Angulo destino %f\n",ang);
    //             vel.angular.z = 0.3; 
    //             vel_pub.publish(vel);
    //             sleep(100);
    //         }
    //         }
    //         vel.angular.z = 0;
    //         vel_pub.publish(vel);
    //         terminou_girar.data = 1;
    //         chat_publisher.publish(terminou_girar);
    //         ros::spinOnce();
    //     }
    // }

    while(ros::ok()){
        if (ang != 0){
            if(ang < 0){
                angulo_destino = ang + angulo;
                if(angulo_destino > (acos(coord[0].orientation.z)*180/3.1415)){
                    vel.angular.z = -0.3; 
                    vel_pub.publish(vel);
                }
            }else if(ang > 0){
                angulo_destino = ang + angulo;
                printf("%f\n",ang);
                while(angulo_destino < (acos(coord[0].orientation.z)*180/3.1415)){
                    printf("Angulo atual: %f\n",acos(coord[0].orientation.z)*180/3.1415);
                    printf("Angulo destino %f\n",ang);
                    vel.angular.z = 0.3; 
                    vel_pub.publish(vel);
                    //ros::spinOnce();
                }
            }
            vel.angular.z = 0;
            vel_pub.publish(vel);
            terminou_girar.data = 1;
            chat_publisher.publish(terminou_girar);
        }
        ros::spinOnce();
    }
}
