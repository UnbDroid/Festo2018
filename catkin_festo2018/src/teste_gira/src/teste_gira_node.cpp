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
#include "std_msgs/Float32.h"
#include <unistd.h>


int main(int argc, char **argv)
{
    ros::init(argc, argv, "teste_gira");

    ros::NodeHandle n;

    geometry_msgs::Twist vel;

    ros::Publisher est_pub = n.advertise<std_msgs::Float32>("gira_angulo", 1);

    ros::Rate loop_rate(10);

    std_msgs::String msg;

    std::stringstream ss;
    int count = 0;
    std_msgs::Int8 estado;
    estado.data = 0;
    int contador = 0;
    std_msgs::Float32 gira;
    gira.data = 90;
    while(ros::ok()){
        
        est_pub.publish(gira);
        
        contador++;

        //ROS_INFO("%s", vel.linear.to_string);

        ros::spinOnce();

   }
}