#include "ros/ros.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/Point.h"
#include "geometry_msgs/Pose.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/PoseWithCovariance.h"

#include <string>

geometry_msgs::Pose coord_odom, coord[6];


void odometria(const nav_msgs::Odometry::ConstPtr& odom){
    coord_odom = odom->pose.pose;
    std::cout << odom->pose.pose.position.x << std::endl;
    std::cout << coord_odom.position.x << "\t" << coord_odom.position.y << std::endl;
}

int main(int argc, char **argv){
    ros::init(argc, argv, "points");

    ros::NodeHandle nh;

    ros::Subscriber od = nh.subscribe("/odom", 1, odometria);

    coord[0].position.x = 0.01;
    coord[0].position.y = 0.01;
    coord[0].orientation.z = 0.001;

    int key, cons;

    while(ros::ok()){
        std::cin >> key;
        
        if(key == 9){
            std::cin >> cons;
            if(cons < 6) std::cout << coord[cons] << std::endl;
        }
        else if(key <= 0 || key >= 6) return 0;
        else{
            coord[key] = coord_odom;
            std::cout << "OK" << "\t" << coord[key]  << "\t" << coord_odom << std::endl;
        }
		ros::spinOnce();
    }
}
