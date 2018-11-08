#include "ros/ros.h"
#include "sensor_msgs/PointCloud.h"
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/Point.h"
#include "geometry_msgs/Pose.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/PoseWithCovariance.h"
#include <std_msgs/Int8.h>
#include "std_msgs/Bool.h"

#include <string>
#include <cmath>

#define NumPos              7
#define QtdPegarPuck        5
#define EntregaFinal        6

geometry_msgs::Pose coord_odom, coord[NumPos];
    /*  
        Caso não haja processamento:
            Posição 0: início
            Posições 1 a 5: pegar
            Posição 6: entrega
        
        Caso haja processamento:
            Posição 0: início
            Posições 1 e 2: pegar
            Posições 3 a 5: processamento
            Posição 6: entrega
    */
int dest_desejado;
int key, cons, salvando = 1;

std_msgs::Int8 coord_enviada;

void odometria(const nav_msgs::Odometry::ConstPtr& odom){
    coord_odom = odom->pose.pose;
    // std::cout << odom->pose.pose.position.x << std::endl;
    // std::cout << coord_odom.position.x << "\t" << coord_odom.position.y << std::endl;
}

void dest(const std_msgs::Int8& pos){
    dest_desejado = pos.data;
    // std::cout << "dest final" << dest_desejado << std:: endl;
}

int main(int argc, char **argv){
    ros::init(argc, argv, "points");

    ros::NodeHandle nh;

    ros::Subscriber od = nh.subscribe("/odom", 1000, odometria);
    ros::Subscriber flag_pos = nh.subscribe("/flag_pos", 1000, dest);
   
    ros::Publisher destino = nh.advertise<geometry_msgs::Pose>("destino", 1);
    ros::Publisher start_nav = nh.advertise<std_msgs::Bool>("init_nav", 1);
    ros::Publisher ready = nh.advertise<std_msgs::Bool>("ready", 100);

    coord[0].position.x = 0.01;
    coord[0].position.y = 0.01;
    coord[0].orientation.z = 0.001;

    coord[1].position.x = 1.5;
    coord[1].position.y = -0.01;

    int dist_real[QtdPegarPuck], menor_dist, dest_final;
    std_msgs::Bool iniciar, navegar;
    iniciar.data = 1;
    navegar.data = 0;

    while(ros::ok() && salvando == 1){
    start_nav.publish(navegar);
        std::cout << "Salvar posição: ";
        std::cin >> key;
        if(key == 9){
            std::cin >> cons;
            if(cons < NumPos) std::cout << coord[cons] << std::endl;
        }
        else if(key <= 0 || key >= NumPos){
            salvando = 0;
            ready.publish(iniciar);
        }
        else{
            coord[key] = coord_odom;
            std::cout << "OK" << "\t" << coord[key]  << "\t" << coord_odom << std::endl;
        }
        
        ros::spinOnce();
    }
    navegar.data = 1;

    while(ros::ok() && salvando == 0){
    start_nav.publish(navegar);
    if(dest_desejado == 0) dest_final = dest_desejado;
    else if(dest_final == 2) dest_final = EntregaFinal;
    else if(dest_final == 1){
        for(int i = 0; i < QtdPegarPuck; i++){
            dist_real[i] = sqrt((coord[i+1].position.x * coord[i+1].position.x) + (coord[i+1].position.y * coord[i+1].position.y));
            if(i == 0 || dist_real[i] < menor_dist){
                menor_dist = dist_real[i];
                dest_final = i+1;
            }
        }
    }
    else dest_final = dest_desejado;

    dest_final = dest_desejado;
    destino.publish(coord[dest_final]);
    std::cout << "dest final publicado " << dest_final << std:: endl;
    std::cout << coord[dest_final] << std:: endl;
    ros::spinOnce();
    }
}