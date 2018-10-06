#include "ros/ros.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Twist.h"

#include <string>

#define VMed	0.08
#define offx	VMed/4
#define offDiag	0.03
#define	offS1	0.4
#define	offS2	0.2
#define	offS7	0.2
#define	offS8	0.4

geometry_msgs::Point32 distancia[9];

void dist(const sensor_msgs::PointCloud::ConstPtr& sensor){
	for (int i = 0; i < 9; ++i)
	{
		distancia[i] = sensor->points[i];
	}
}

int main(int argc, char **argv){
	ros::init(argc, argv, "desvia");

	ros::NodeHandle nh;

	geometry_msgs::Twist vel;

	ros::Subscriber sub = nh.subscribe("distance_sensors", 10, dist);
	ros::Publisher chat_publisher = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1);

	float vel_x, vel_y;

	//ros::Rate loop_rate(100);

	while(ros::ok()){
	

		vel_x = VMed - offx * distancia[0].x - offDiag * distancia[8].x - offDiag * distancia[1].x;
		vel_y = -offS1 * distancia[1].x - offS2 * distancia[2].x + offS8 * distancia[8].x + offS7 * distancia[7].x;


		if((distancia[1].x < 0.3 && distancia[1].x != 0) && (distancia[8].x < 0.3 && distancia[8].x != 0)) vel_x = 0;

		vel.linear.x = vel_x;
		vel.linear.y = vel_y;

		chat_publisher.publish(vel);

		ros::spinOnce();
		//loop_rate.sleep();
	}
}