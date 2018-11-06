#include "ros/ros.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Twist.h"
#include "std_msgs/Int8.h"
#include <string>
#include <unistd.h>


#define VMed	0.08
#define offx	VMed/4
#define offDiag	0.03
#define	offS1	0.4
#define	offS2	0.2
#define	offS7	0.2
#define	offS8	0.4

geometry_msgs::Twist pos;
int estado;

void estado_(const std_msgs::Int8::ConstPtr& msg){
    estado = msg->data;
}

void pos_(const geometry_msgs::Twist& msg){
    //ROS_INFO_STREAM("Subscriber velocities:"<<" linear x="<<msg.linear.x<<" linear y="<<msg.linear.y);
    pos.linear.x = msg.linear.x;
    pos.linear.y = msg.linear.y;
}

int main(int argc, char **argv){

    sleep(5);
	ros::init(argc, argv, "desvia");

	ros::NodeHandle nh;
    ros::NodeHandle n;

	geometry_msgs::Twist vel;

	ros::Subscriber sub = nh.subscribe("pos_disco", 10, &pos_);
	ros::Publisher vel_pub = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1);

    ros::Subscriber sub_est = nh.subscribe("estado", 10, estado_);

	float vel_x, vel_y;

    int perto = 0;

	ros::Rate loop_rate(10);

	while(ros::ok()){

        if(estado == 0){
            int posX = int(pos.linear.x);
            int posY = int(pos.linear.y);

            if(posY < perto){
                vel.linear.x = 0.5;
                if(posX < (145 - 2)){
                    vel.linear.x = 0;
                    vel.angular.z = 0.5;
                }else if (posX > (145 + 2)){
                    vel.linear.x = 0;
                    vel.angular.z = -0.5;
                }
                else{
                    vel.angular.z = 0;
                }
            }else{
                vel.linear.x = 0.5;
                if(posX < (145 - 2)){
                    vel.linear.x = 0;
                    vel.angular.z = 0.5;
                }else if (posX > (145 + 2)){
                    vel.linear.x = 0;
                    vel.angular.z = -0.5;
                }
                else{
                    vel.linear.x = 0.5;
                    vel.angular.z = 0;
                }
            }

            vel_pub.publish(vel);
        }


		// vel_x = VMed - offx * distancia[0].x - offDiag * distancia[8].x - offDiag * distancia[1].x;
		// vel_y = -offS1 * distancia[1].x - offS2 * distancia[2].x + offS8 * distancia[8].x + offS7 * distancia[7].x;


		//if((distancia[1].x < 0.3 && distancia[1].x != 0) && (distancia[8].x < 0.3 && distancia[8].x != 0)) vel_x = 0;

		// vel.linear.x = vel_x;
		// vel.linear.y = vel_y;

		// chat_publisher.publish(vel);

		ros::spinOnce();
		//loop_rate.sleep();
	}
}