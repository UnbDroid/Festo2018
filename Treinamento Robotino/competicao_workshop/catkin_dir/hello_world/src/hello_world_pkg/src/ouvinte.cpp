#include "ros/ros.h"
#include "std_msgs/String.h"

#include <string>
#include <iostream>

void chatCallback(const std_msgs::String::ConstPtr& msg) { //(tipo_msg.ptr&)
	std::cout << msg->data << "\n";
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "subscriber");

	//objeto de comunicação com o ros.
	ros::NodeHandle nh;

	//objeto subscriber. Criando nó de ouvinte.
	ros::Subscriber sub = nh.subscribe("chat", 1000, chatCallback); //(nome_topico, buffer, funcao)

	ros::spin();
}