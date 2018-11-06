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

void dist(const sensor_msgs::PointCloud::ConstPtr& sensor){
	for (int i = 0; i < 9; ++i)
	{
		distancia[i] = sensor->points[i];
	}
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "pega_disco");

    ros::NodeHandle n;

    geometry_msgs::Twist vel;

    ros::Publisher est_pub = n.advertise<std_msgs::Int8>("estado", 1);
    ros::Subscriber sub_dist = n.subscribe("distance_sensors", 10, dist);

    ros::Rate loop_rate(10);

    std_msgs::String msg;

    std::stringstream ss;
    int count = 0;
    std_msgs::Int8 estado;
    estado.data = 0;

    while(ros::ok()){

        if (estado.data == 0){
            if(distancia[0].x > 0.28){
                estado.data = 0;
            }else{
                estado.data = 1;
            }
        }else{
            if(distancia[0].x > 0.28){
                estado.data = 0;
            }else{
                estado.data = 1;
            }
        }

        est_pub.publish(estado);

        //ROS_INFO("%s", vel.linear.to_string);

        ros::spinOnce();

   }
}