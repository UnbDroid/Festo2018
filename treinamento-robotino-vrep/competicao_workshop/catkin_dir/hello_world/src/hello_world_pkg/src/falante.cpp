#include "ros/ros.h"
#include "std_msgs/String.h"

#include <string>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "publisher");

	//objeto de comunicação com o ros.
	ros::NodeHandle nh;

	//objeto publisher. Criando nó de publicação.
	ros::Publisher chat_publisher = nh.advertise<std_msgs::String>("chat", 1000); //<tipo_msg>(nome_topico, buffer)

	int i = 0;

	std_msgs::String msg;

	//objeto com caracteristicas do loop do spin.
	ros::Rate loop_rate(100); //(ms).

	while(ros::ok()) {
		std::string info {"Go DROID Go!.." + std::to_string(i++)};

		msg.data = info; //std_msgs::String != std::string.		std_msgs::String.data == std::string.

		//publicação.
		chat_publisher.publish(msg);

		ros::spinOnce();
		loop_rate.sleep();
	}

}