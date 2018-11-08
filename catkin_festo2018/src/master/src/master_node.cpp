#include "ros/ros.h"
#include "std_msgs/String.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Twist.h"
#include <sstream>
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include "std_msgs/Int8.h"

geometry_msgs::Point32 distancia[9];
geometry_msgs::Twist pos;


void dist(const sensor_msgs::PointCloud::ConstPtr& sensor){
	for (int i = 0; i < 9; ++i)
	{
		distancia[i] = sensor->points[i];
	}
}

void pos_(const geometry_msgs::Twist& msg){
    //ROS_INFO_STREAM("Subscriber velocities:"<<" linear x="<<msg.linear.x<<" linear y="<<msg.linear.y);
    pos.linear.x = msg.linear.x;
    pos.linear.y = msg.linear.y;
}

int posicoes;

void posicoes_(const std_msgs::Int8::ConstPtr& msg){
    posicoes = msg->data;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pega_disco");

    ros::NodeHandle n;

    geometry_msgs::Twist vel;

    ros::Publisher est_pub = n.advertise<std_msgs::Int8>("estado", 1);
    ros::Subscriber sub_dist = n.subscribe("distance_sensors", 1, dist);
    ros::Subscriber sub_pos = n.subscribe("posicoes_segue", 1, posicoes_);
    ros::Subscriber sub = n.subscribe("pos_disco", 10, &pos_);
    ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("cmd_vel", 1);

    ros::Rate loop_rate(1);

    std_msgs::String msg;

    std::stringstream ss;
    int count = 0;
    std_msgs::Int8 estado;
    estado.data = 2;

    while(ros::ok()){
        if(estado.data == 2){
            if(posicoes == 1){
                estado.data == 3;
            }else{
                estado.data = 2;
            }
        }
        if (estado.data == 0){
            if(distancia[0].x > 0.28){
                estado.data = 0;
            }else{
                estado.data = 1;
            }
        }else if (estado.data == 1){
            if(distancia[0].x > 0.28){
                estado.data = 0;
            }else{
                estado.data = 1;
            }
        }else if(estado.data == 3){
            if(pos.linear.x == 0 && pos.linear.y == 0){
                vel.angular.z = 0.5;
            }else{
                vel.angular.z = 0;
                estado.data = 0;
            }
            vel_pub.publish(vel);
        }

        est_pub.publish(estado);

        //ROS_INFO("%s", vel.linear.to_string);

        ros::spinOnce();

   }
}