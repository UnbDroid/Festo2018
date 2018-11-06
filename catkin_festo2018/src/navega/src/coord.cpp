#include "ros/ros.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/Point.h"
#include "geometry_msgs/Pose.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/PoseWithCovariance.h"



int main(int argc, char **argv){
	ros::init(argc, argv, "coordenada");

	ros::NodeHandle nh;

    ros::Publisher envia_coord = nh.advertise<geometry_msgs::Pose>("coord", 100);


    geometry_msgs::Pose coord;

	ros::Rate loop_rate(100);

    while(ros::ok()){

        std::cout << "Destino:" << std::endl << "  X: ";
        std::cin >> coord.position.x;
        std::cout << "  Y: ";
        std::cin >> coord.position.y;

        envia_coord.publish(coord);

		ros::spinOnce();
        loop_rate.sleep();
    }

}