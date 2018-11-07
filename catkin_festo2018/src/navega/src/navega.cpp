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

#include <string>
#include <cmath>

#define VMed	4.0


geometry_msgs::Pose coord[2];
float delX, delY, diag;
geometry_msgs::Point32 distancia[9];

void dist(const sensor_msgs::PointCloud::ConstPtr& sensor){
	for (int i = 0; i < 9; ++i) distancia[i] = sensor->points[i];
}

void pega_pos(const geometry_msgs::Pose& pos){
    coord[1] = pos;
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
    

	ros::Subscriber od = nh.subscribe("/odom", 10, odometria);
    ros::Subscriber ent = nh.subscribe("coord", 10, pega_pos);
    ros::Subscriber sub_dist = nh.subscribe("distance_sensors", 10, dist);
	ros::Publisher chat_publisher = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1);
    // ros::Publisher send_flag = nh.advertise<>("decisao", 1);
    

    bool flag = 0;
	float vel_x = 0, vel_y = 0;
    float coord_x, coord_y, real_dist;

	ros::Rate loop_rate(100);
    
    // std::cout << "Destino:" << std::endl << "  X: ";
    // std::cin >> coord_x;
    // coord[1].position.x = coord_x;
    // std::cout << "  Y: ";
    // std::cin >> coord_y;
    // coord[1].position.y = coord_y;

	while(ros::ok() && flag == 0){
        std::cout << coord[1].position.x << "\t" << coord[1].position.y << std::endl;


        delX = coord[1].position.x - coord[0].position.x; 
        delY = coord[1].position.y - coord[0].position.y; 
        // std::cout << coord[0].position.x << "\t" << coord[0].position.y << std::endl;

        if(delX > 0 && delX < 0.0001) delX = 0;
        if(delY > 0 && delY < 0.0001) delY = 0;
        if(delX < 0 && delX > -0.0001) delX = 0;
        if(delY < 0 && delY > -0.0001) delY = 0;

        diag = sqrt((delX * delX) + (delY * delY));
        if(diag == 0){
            vel_x = 0;
            vel_y = 0;
        }
        else{
            vel_x = VMed * delX / diag;
            vel_y = VMed * delY / diag;
        }
        // std::cout << diag << std::endl;


        vel.linear.x = vel_x;
        vel.linear.y = vel_y;

        std::cout << coord[0].position.x << "\t" << vel.linear.x << std::endl;
        std::cout << coord[0].position.y << "\t" << vel.linear.y << std::endl;

        // std::cout << vel_x;
        if (diag <= 0.1 && vel_x != 0 && vel_y != 0) flag = 1;
    
        chat_publisher.publish(vel);
        // for(int i = 1; i < 9; ++i){
        //     real_dist = sqrt((distancia[i].x * distancia[i].x ) + (distancia[i].y * distancia[i].y));
        //     if(real_dist < 0.3 && real_dist != 0){
        //         std::cout << "Sensor " << i << "\t" << real_dist << std::endl;
        //         return 0;
        //     }
        // }
		// if((distancia[1].x < 0.3 && distancia[1].x != 0) && (distancia[8].x < 0.3 && distancia[8].x != 0)){

		// }

		// vel.linear.x = vel_x;
		// vel.linear.y = vel_y;

		

		ros::spinOnce();
        loop_rate.sleep();
    }
}