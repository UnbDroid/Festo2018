// https://github.com/CoppeliaRobotics/v_repExtRosInterface
// https://github.com/CoppeliaRobotics/ros_bubble_rob2
// https://github.com/CoppeliaRobotics/vrep_plugin_skeleton
// https://github.com/CoppeliaRobotics/vrep_skeleton_msg_and_srv

#include "ros/ros.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Twist.h"
#include <math.h>

#include <string>

#define _USE_MATH_DEFINES
#define VMed	0.8
#define offx	VMed/4
#define offDiag	0.03
#define	offS1	0.4
#define	offS2	0.2
#define	offS7	0.2
#define	offS8	0.4

bool chegou = 0;

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
		float atual[2]; //
		atual[0] = 3.5;
		atual[1] = 0;
		float angle; //
		angle = M_PI;
		float coord[2]; //coord[0] = posição em x no plano da

		cout << "Where to go?:" << endl << "X: ";
		cin >> coord[0];
		cout<< "Y: ";
		cin >> coord[1];
		while(!chegou){

		}

		// vel_x = VMed - (offx * distancia[0].x) - (offDiag * distancia[8].x) - (offDiag * distancia[1].x);
		// vel_y = -(offS1 * distancia[8].x) - (offS2 * distancia[7].x) + (offS8 * distancia[1].x) + (offS7 * distancia[2].x);


		// if((distancia[1].x < 0.3 && distancia[1].x != 0) && (distancia[8].x < 0.3 && distancia[8].x != 0)){

		// }

		// vel.linear.x = vel_x;
		// vel.linear.y = vel_y;

		// chat_publisher.publish(vel);

		// ros::spinOnce();
		// //loop_rate.sleep();
	}
}