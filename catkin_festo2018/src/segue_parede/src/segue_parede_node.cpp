// https://github.com/CoppeliaRobotics/v_repExtRosInterface
// https://github.com/CoppeliaRobotics/ros_bubble_rob2
// https://github.com/CoppeliaRobotics/vrep_plugin_skeleton
// https://github.com/CoppeliaRobotics/vrep_skeleton_msg_and_srv

#include "ros/ros.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/Point.h"
#include "geometry_msgs/Pose.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/PoseWithCovariance.h"
#include "std_msgs/Int8.h"
#include <string>
#include <cmath>


geometry_msgs::Pose coord[2];
float od_x, od_y, diag;
geometry_msgs::Point32 distancia[9];


void dist(const sensor_msgs::PointCloud::ConstPtr& sensor){
	for (int i = 0; i < 9; ++i) distancia[i] = sensor->points[i];
}

void pega_pos(const geometry_msgs::Pose& pos){
    coord[1] = pos;
}

void odometria(const nav_msgs::Odometry::ConstPtr& odom){
    coord[0] = odom->pose.pose;
}

int estado;

void estado_(const std_msgs::Int8::ConstPtr& msg){
    estado = msg->data;
}

int main(int argc, char **argv){
	ros::init(argc, argv, "desvia");

	ros::NodeHandle nh;
	ros::NodeHandle n;

	geometry_msgs::Twist vel;
	
	ros::Subscriber od = nh.subscribe("/odom", 10, odometria);
	ros::Subscriber sub = nh.subscribe("distance_sensors", 10, dist);
	ros::Publisher chat_publisher = nh.advertise<geometry_msgs::Twist>("cmd_vel", 1);
	ros::Publisher posicoes = n.advertise<std_msgs::Int8>("posicoes_segue", 1);
	ros::Subscriber sub_est = nh.subscribe("estado", 10, estado_);
	
	float vel_x, vel_y;
	float coord_x, coord_y, real_dist;
	int move_direita = 0, move_esquerda = 0, move_frente = 0, deu_ruim = 0, ajustando = 0;
	ros::Rate loop_rate(1);

	// while(ros::ok){
	// 	if (distancia[2].y < 0.3){
	// 		vel_y = 0.5;
	// 	}else{
	// 		vel_y = -0.5;
	// 	}
		
	// }
	int flag = 0;
	std_msgs::Int8 contador_posicoes;
	contador_posicoes.data = 0;
	while(ros::ok()){
		if(estado == 2){
			if(move_direita == 1 || move_esquerda == 1 || move_frente == 1){
				if(move_direita == 1){
					if (distancia[0].x > 0.5){
						vel_x = 0.5;
						vel_y = 0;
						if(distancia[1].x < 0.35){
							vel_y = - 0.5;
							flag = 1;
						}else if(flag == 1){
							vel_y = 0;
							flag = 0;
							if (distancia[0].x < 0.4)
								move_direita = 0;
								contador_posicoes.data = contador_posicoes.data + 1;
								posicoes.publish(contador_posicoes);
								printf("%d", contador_posicoes.data);
						}
					}else{
						vel_x = 0;
						vel_y = -0.5;
					}
				}else if(move_esquerda == 1){
					vel_x = 0;
					vel_y = 0.5;
					if (distancia[2].y < 0.3){
						move_esquerda = 0;
						vel_y = 0;
					}
				}
			}else if(distancia[0].x < 0.40){
				vel_x = 0;
				if(distancia[2].y < 0.3){
					if(distancia[7].x > 0.05){
						move_direita = 1;
					}else{
						deu_ruim = 1;
					}
				}else{
					move_esquerda = 1; 
				}
			}else{
				vel_x = 0.5;
				if(distancia[2].y > 0.3 && distancia[2].y < 0.4){
					vel_y = 0;
				}
				else if(distancia[2].y < 0.4){
					vel_y = -0.5;
				}else{
					vel_y = 0.5;
				}
			}
			
			vel.linear.x = vel_x;
			vel.linear.y = vel_y;

			chat_publisher.publish(vel);
		}

		ros::spinOnce();
	}

	// while(ros::ok()){
	// 	if(move_direita == 1 || move_esquerda == 1 || move_frente == 1){
	// 		if(move_direita == 1){
	// 			vel_x = 0;
	// 			vel_y = 0.5;
	// 			if (distancia[0].x > 0.5){
	// 				vel_x = 0.5;
	// 				if(distancia[2].y < 0.5){
	// 					move_direita = 0;
	// 				}
	// 			}
	// 		}else if(move_esquerda == 1){
	// 			vel_x = 0;
	// 			vel_y = -0.5;
	// 		}
	// 	}else if(ajustando = 0){
	// 		if(distancia[0].x < 0.35){
	// 			vel_x = 0;
	// 			if(distancia[2].y < 0.3){
	// 				if(distancia[7].y > 0.4){
	// 					move_direita = 1;
	// 				}else{
	// 					deu_ruim = 1;
	// 				}
	// 			}else{
	// 				move_esquerda = 1; 
	// 			}
	// 		}else{
	// 			vel_x = 0.5;
	// 		}
	// 	}
	// 	vel.linear.x = vel_x;
	// 	vel.linear.y = vel_y;

	// 	chat_publisher.publish(vel);

	// 	ros::spinOnce();
	// }

	// while(ros::ok() && flag ==0){
	
	// 	vel_x = 0.05;
	// 	vel_y = 0;
	// 	vel.linear.x = vel_x;
	// 	vel.linear.y = vel_y;

	// 	if(distancia[0].x < 0.2){//Encontra obstáculo
	// 		od_x = coord[0].position.x;
	// 	    od_y = coord[0].position.y;
	// 		vel_x = 0;
	// 		vel_y = 0;

	// 		if ((od_y - coord[0].position.y)< 0.15){
	// 			 vel_y = 0.05;
	// 		}
	// 		vel_x = 0;
	// 		vel_y = 0;

	// 		while ((od_x - coord[0].position.x)< 0.3){
	// 			vel_x = 0.05;
	// 		}
	// 		vel_x = 0;
	// 		vel_y = 0;
	// 		flag = 1;
	// 	}

		
	// 	if(distancia[7].x != 0.15 && distancia[0].x > 0.2){//segue parede

	// 		if (distancia[7].x <0.2){
	// 			vel_x = 0.05;
	// 			vel_y = 0.05;
	// 			vel.linear.x = vel_x;
	// 			vel.linear.y = vel_y;

	// 		}
	// 		if (distancia[7].x>0.1){
	// 			vel_x = 0.05;
	// 			vel_y = -0.05;
	// 			vel.linear.x = vel_x;
	// 			vel.linear.y = vel_y;

	// 		}
	// 	}

		
		

	// 	chat_publisher.publish(vel);

	// 	ros::spinOnce();

	// }
}
