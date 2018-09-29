#include "ros/ros.h"
#include "std_msgs/String.h"

#include <string>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "tagarela");

	ros::NodeHandle nh;

	ros::Publisher chat_publisher = nh.advertise<std_msgs::String>("chat", 1000);

	int cont = 0;

	std_msgs::String msg;

	ros::Rate loop_rate(100);

	while(ros::ok()){
		std::string info {"Blah blah blah! " + std::to_string(cont++)};

		msg.data = info;

		chat_publisher.publish(msg);

		ros::spinOnce();
		loop_rate.sleep();
	}
}