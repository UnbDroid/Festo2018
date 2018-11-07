#include "ros/ros.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/Point.h"
#include "geometry_msgs/Pose.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/PoseWithCovariance.h"

#include <cmath>

#define offset_Wall 0.26
#define VMed 6.0

geometry_msgs::Point32 dist[9];
float real_dist[9];

void distance(const sensor_msgs::PointCloud::ConstPtr& sens){
	for (int i = 0; i < 9; ++i){
        dist[i] = sens->points[i];
        real_dist[i] = sqrt((dist[i].x * dist[i].x) + (dist[i].y * dist[i].y));
    }
}

int main(int argc, char **argv){
    ros::init(argc, argv, "wall");

	ros::NodeHandle nh;

    ros::Subscriber sub_dist = nh.subscribe("distance_sensors", 10, distance);
	ros::Publisher chat_publisher = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1);

	geometry_msgs::Twist vel;

    float vel_x, vel_y, dis_ant;

    while(ros::ok()){
        std::cout << real_dist[4] << "\t" << real_dist[5] << std::endl;

        
         while (real_dist[3] > 0.3){
            vel_y = VMed;
            vel_x = (real_dist[5] - offset_Wall) * VMed;

            vel.linear.x = vel_x;
            vel.linear.y = vel_y;

            chat_publisher.publish(vel);
         }
		ros::spinOnce();
    }
    
    return 0;
}
