#include "ros/ros.h"
#include "std_msgs/String.h"

#include <string>
#include <iostream>

void chatCallback(const std_msgs::String::ConstPtr& msg){
	std::cout << "Stop talk that " << msg->data << std::endl;
}

int main(int argc, char **argv){
	ros::init(argc, argv, "ouvinte");

	ros::NodeHandle nh;

	ros::Subscriber sub = nh.subscribe("chat", 1000, chatCallback);

	ros::spin();
}