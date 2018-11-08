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


geometry_msgs::Pose coord[2];
float od_x, od_y, diag;
geometry_msgs::Point32 distancia[9];


void dist(const sensor_msgs::PointCloud::ConstPtr& sensor){
	for (int i = 0; i < 9; ++i) distancia[i] = sensor->points[i];
}

void pega_pos(const geometry_msgs::Pose& pos){
    coord[1] = pos;
}

void odometria(const nav_msgs::Odometry::ConstPtr& odom){
    coord[0] = odom->pose.pose;
}


int main(int argc, char **argv){
	ros::init(argc, argv, "desvia");

	ros::NodeHandle nh;

	geometry_msgs::Twist vel;
	
	ros::Subscriber od = nh.subscribe("/odom", 10, odometria);
	ros::Subscriber sub = nh.subscribe("distance_sensors", 10, dist);
	ros::Publisher chat_publisher = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1);

	bool flag =0;	
	float vel_x, vel_y;
	float coord_x, coord_y, real_dist;

	//ros::Rate loop_rate(100);

	while(ros::ok() && flag ==0){
	
		vel_x = 0.05;
		vel_y = 0;
		vel.linear.x = vel_x;
		vel.linear.y = vel_y;

		if(distancia[0].x < 0.2){//Encontra obstáculo
			od_x = coord[0].position.x;
		    od_y = coord[0].position.y;
			vel_x = 0;
			vel_y = 0;

			while ((od_y - coord[0].position.y)< 0.15){
				 vel_y = 0.05;
			}
			vel_x = 0;
			vel_y = 0;

			while ((od_x - coord[0].position.x)< 0.3){
				vel_x = 0.05;
			}
			vel_x = 0;
			vel_y = 0;
			flag = 1;
		}

		
		while(distancia[7].x != 0.15 && distancia[0].x > 0.2){//segue parede

			if (distancia[7].x <0.2){
				vel_x = 0.05;
				vel_y = 0.05;
				vel.linear.x = vel_x;
				vel.linear.y = vel_y;

			}
			if (distancia[7].x>0.1){
				vel_x = 0.05;
				vel_y = -0.05;
				vel.linear.x = vel_x;
				vel.linear.y = vel_y;

			}
		}

		
		

		chat_publisher.publish(vel);

		ros::spinOnce();
		//loop_rate.sleep();
	}
}
