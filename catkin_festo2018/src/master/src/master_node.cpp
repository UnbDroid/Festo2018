#include "ros/ros.h"
#include "std_msgs/String.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Twist.h"
#include <sstream>
#include "geometry_msgs/Pose.h"
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include "std_msgs/Int8.h"
#include "std_msgs/Int32.h"
#include "std_msgs/Bool.h"

geometry_msgs::Point32 distancia[9];
std_msgs::Int8 estado;
bool iniciar, fim_nav, com_disco, tempo_acabando, disco_proc, entregou_disc;

//---------------------Estados-----------------------------
/*  Estado 0: Retorna base
    Estado 1: 
    Estado 2: Pega disco na maquina
    Estado 2: Entrega disco final
    Estado 3: Pega disco processamento
    Estado 4: Entrega disco processamento*/

#define RetornaBase         0
#define VaPegarMaquina      1
#define PegarMaquina        2
#define VaEntregaFinal      3
#define EntregaFinal        4
#define VaPegarProc         5 
#define PegarProc           6
#define VaEntregaProc       7
#define EntregaProc         8

//-----------------------------------------------------------

void dist(const sensor_msgs::PointCloud::ConstPtr& sensor){
	for (int i = 0; i < 9; ++i)
	{
		distancia[i] = sensor->points[i];
	}
}

void start(const std_msgs::Bool& strt){
    iniciar = strt.data;
}

void sai_est_1(const std_msgs::Bool& strt){
    fim_nav = strt.data;
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "master");

    ros::NodeHandle nh;
    ros::Publisher flag_pub = nh.advertise<std_msgs::Int8>("/flag_pos", 1);
    sleep(5);
    std::cout << "Pronto!" << std::endl;



    geometry_msgs::Twist vel;

    ros::Subscriber sub_dist = nh.subscribe("distance_sensors", 10, dist);
    ros::Subscriber ready = nh.subscribe("ready", 100, start);
    ros::Subscriber end_nav = nh.subscribe("end_nav", 1, sai_est_1);

    ros::Publisher envia_destino = nh.advertise<geometry_msgs::Pose>("destino", 1);
    ros::Publisher start_nav = nh.advertise<std_msgs::Bool>("init_nav", 1);
    ros::Publisher envia_coord = nh.advertise<geometry_msgs::Pose>("coord", 100);

    

    ros::Rate loop_rate(1);

    std_msgs::String msg;

    std::stringstream ss;

    com_disco = 0;
    fim_nav = 0;
    tempo_acabando = 0;
    disco_proc = 0;
    entregou_disc = 1;

    while(ros::ok() && !iniciar){
        ros::spinOnce();
    }
    std::cout << "GO!" << std::endl;
    while(ros::ok()){
        if(tempo_acabando == 1){
            fim_nav = 0;
            estado.data = RetornaBase;
            while(!fim_nav){
                flag_pub.publish(estado);
                ros::spinOnce();
            }
        }
        else if(com_disco && !fim_nav){
            estado.data = VaEntregaFinal;
        }
        else if(com_disco && fim_nav){
            estado.data = EntregaFinal;
        }
        else if(!com_disco && !fim_nav){
            estado.data = VaPegarMaquina;
        }
        else if(!com_disco && fim_nav){
            estado.data = PegarMaquina;
        }
    
        if(!fim_nav){
            while(!fim_nav){
                flag_pub.publish(estado);
                ros::spinOnce();
            }
        }else if(estado.data == 3){
            // if(pos.linear.x == 0 && pos.linear.y == 0){
            //     vel.angular.z = 0.5;
            // }else{
            //     vel.angular.z = 0;
            //     estado.data = 0;
            // }
            // vel_pub.publish(vel);
        }
        else{
            if(estado.data = EntregaFinal){
                while(com_disco){

                }
            }
        }
        ros::spinOnce();

   }
}