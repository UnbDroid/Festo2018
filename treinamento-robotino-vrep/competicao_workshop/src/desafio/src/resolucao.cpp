#include "ros/ros.h"
#include "std_msgs/String.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Twist.h"
#include <string>

#define LIMITE 0.40
#define VELOCIDADE 0.05

// global
int front = 0;
int left = 0;
int right = 0;
int back = 0;

float calc_dist(float a, float b){
	return sqrt(a*a + b*b);
}

void dist_sensor(const sensor_msgs::PointCloud::ConstPtr& dists){
	//std::cout << dists->points[0].x << "\n";

	if (calc_dist(dists->points[0].x, dists->points[0].y) < LIMITE || calc_dist(dists->points[1].x, dists->points[1].y) < LIMITE || calc_dist(dists->points[8].x, dists->points[8].y) < LIMITE){
		front = 1;
	} else {
		front = 0;
	}


	if (calc_dist(dists->points[2].x, dists->points[2].y) < LIMITE || calc_dist(dists->points[3].x, dists->points[3].y) < LIMITE){
		left = 1;
	} else {
		left = 0;
	}


	if (calc_dist(dists->points[4].x, dists->points[4].y) < LIMITE || calc_dist(dists->points[5].x, dists->points[5].y) < LIMITE){
		back = 1;
	} else {
		back = 0;
	}


	if (calc_dist(dists->points[6].x, dists->points[6].y) < LIMITE || calc_dist(dists->points[7].x, dists->points[7].y) < LIMITE){
		right = 1;
	} else {
		right = 0;
	}
}

int main(int argc, char **argv)
{
	geometry_msgs::Twist vel;
	int state = 1;

	ros::init(argc, argv, "resolucao");

	ros::NodeHandle nh;
	
	ros::Subscriber sub_dist = nh.subscribe("distance_sensors", 1000, dist_sensor);
	ros::Publisher controle = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1000); //<tipo_msg>(nome_topico, buffer)
	
	ros::Rate loop_rate(1);
	while (ros::ok){
		switch (state) {
			case 1:
				std::cout << "estou no 1\n";
				if (!front){
					state = 1;
				} else {
					state = 2;
					printf("2\n");
				}
			break;

			case 2:
				std::cout << "estou no 2\n";
				if (!front){
					state = 1;
					printf("1\n");
				} else {
					if (!right){
						state = 2;
					} else {
						state = 3;
						printf("3\n");
					}
				}
			break;

			case 3:
				std::cout << "estou no 3\n";
				if (!front){
					state = 1;
					printf("1\n");
				} else {
					if (!left){
						state = 3;
					} else {
						state = 2;
						printf("4\n");
					}
				}
			break;
			/*
			case 4:
				if (!left){
					state = 3;
				} else {
					if (!back){
						state = 4;
					} else {
						state = 5;
					}
				}
			break;

			case 5:
				if (!front){
					state = 5;
				} else {
					state = 6;
				}
			break;

			case 6:
				if (!right){
					state = 6;
				} else {
					state = 7;
				}
			break;

			case 7:
				if (!right){
					state = 8;
				} else {
					if (!back){
						state = 7;
					} else {
						state = 9;
					}
				}
			break;

			case 8:
				if (!front){
					state = 1;
				} else {
					if (!right){
						state = 8;
					} else {
						state = 7;
					}
				}
			break;

			case 9:
				state = 9;
			break;
			*/
			default:
			break;
		}

		vel.linear.x = 0;
		vel.linear.y = 0;
		vel.linear.z = 0;
		vel.angular.x = 0;
		vel.angular.y = 0;
		vel.angular.z = 0;
		
		switch (state){
			case 5:
			case 1:
				vel.linear.x = VELOCIDADE;
			break;

			case 8:
			case 6:
			case 2:
				vel.linear.y = -VELOCIDADE;
			break;

			case 3:
				vel.linear.y = VELOCIDADE;
			break;

			case 7:
			case 4:
				vel.linear.x = -VELOCIDADE;
			break;

			case 9:
				vel.angular.z = 5*VELOCIDADE;
			break;

			default:
			break;
		}

		controle.publish(vel);
		
		ros::spinOnce();
		loop_rate.sleep();
	}
}