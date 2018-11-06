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

#define VMed	2.0
// #define offx	VMed/4
// #define offDiag	0.03
// #define	offS1	0.4
// #define	offS2	0.2
// #define	offS7	0.2
// #define	offS8	0.4pose&

// geometry_msgs::Point32 distancia[9];

// void dist(const sensor_msgs::PointCloud::ConstPtr& sensor){
// 	for (int i = 0; i < 9; ++i)
// 	{
// 		distancia[i] = sensor->points[i];
// 	}
// }



geometry_msgs::Pose coord[2];
float delX, delY, diag;

void odometria(const nav_msgs::Odometry::ConstPtr& odom){
    coord[0] = odom->pose.pose;
    // std::cout << odom->pose.pose.position.x << std::endl;
    std::cout << coord[0].position.x << "\t" << coord[0].position.y << std::endl;
}

int main(int argc, char **argv){
	ros::init(argc, argv, "navega");

	ros::NodeHandle nh;

	geometry_msgs::Twist vel;
    

	ros::Subscriber sub = nh.subscribe("/odom", 10, odometria);
	ros::Publisher chat_publisher = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1);

    bool flag = 0;
	float vel_x, vel_y;
    float coord_x, coord_y;

	ros::Rate loop_rate(100);
    std::cout << "Destino:" << std::endl << "  X: ";
    std::cin >> coord_x;
    coord[1].position.x = coord_x;
    std::cout << coord[1].position.x;
    std::cout << "  Y: ";
    std::cin >> coord_y;
    coord[1].position.y = coord_y;
    std::cout << coord[1].position.y;

	while(ros::ok()){


		if((coord[0].position.x != coord[1].position.x) && (coord[0].position.y != coord[1].position.y) && flag == 0){
			delX = coord[1].position.x - coord[0].position.x; 
			delY = coord[1].position.y - coord[0].position.y; 
            std::cout << coord[0].position.x << "\t" << coord[0].position.y << std::endl;

            if(delX > 0 && delX < 0.0001) delX = 0;
            if(delY > 0 && delY < 0.0001) delY = 0;
            if(delX < 0 && delX > -0.0001) delX = 0;
            if(delY < 0 && delY > -0.0001) delY = 0;

			diag = sqrt((delX * delX) + (delY * delY));
            // std::cout << diag << std::endl;

			vel_x = (VMed * (-delX))/diag;
			vel_y = (VMed * (-delY))/diag;

			vel.linear.x = vel_x;
			vel.linear.y = vel_y;

            // std::cout << coord[0].position.x << "\t" << vel.linear.x << std::endl;
            // std::cout << coord[0].position.y << "\t" << vel.linear.y << std::endl;

            // std::cout << vel_x;
            if (diag <= 0.05) flag = 1;
		}else{
            vel.linear.x = 0;
			vel.linear.y = 0;
        }
    
        chat_publisher.publish(vel);
		// if((distancia[1].x < 0.3 && distancia[1].x != 0) && (distancia[8].x < 0.3 && distancia[8].x != 0)){

		// }

		// vel.linear.x = vel_x;
		// vel.linear.y = vel_y;

		

		ros::spinOnce();
	}
}