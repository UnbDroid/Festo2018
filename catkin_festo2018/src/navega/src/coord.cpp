// NÃO UTILIZADO





#include "ros/ros.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/Point.h"
#include "geometry_msgs/Pose.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/PoseWithCovariance.h"
#include "std_msgs/Bool.h"

geometry_msgs::Pose coord;
bool comecar;

void receive_pos(const geometry_msgs::Pose& destino){
    coord = destino;
}

void start(const std_msgs::Bool& strt){
    comecar = strt.data;
}


int main(int argc, char **argv){
	ros::init(argc, argv, "coordenada");

	ros::NodeHandle nh;

    ros::Subscriber start_nav = nh.subscribe("init_nav", 1, start);
    ros::Subscriber receber_pos = nh.subscribe("destino", 1, receive_pos);

    ros::Publisher envia_coord = nh.advertise<geometry_msgs::Pose>("coord", 100);


	ros::Rate loop_rate(100);



    while(ros::ok()){
        while(!comecar){
            std::cout << comecar << std::endl;
            ros::spinOnce();
        }
        std::cout << "coordenada enviada: " << coord << std::endl;
        envia_coord.publish(coord);

		ros::spinOnce();
        loop_rate.sleep();
    }

}