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

geometry_msgs::Point32 distancia[9];

void dist(const sensor_msgs::PointCloud::ConstPtr& sensor){
	for (int i = 0; i < 9; ++i)
	{
		distancia[i] = sensor->points[i];
	}
}

/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int main(int argc, char **argv)
{
  /**
   * The ros::init() function needs to see argc and argv so that it can perform
   * any ROS arguments and name remapping that were provided at the command line.
   * For programmatic remappings you can use a different version of init() which takes
   * remappings directly, but for most command-line programs, passing argc and argv is
   * the easiest way to do it.  The third argument to init() is the name of the node.
   *
   * You must call one of the versions of ros::init() before using any other
   * part of the ROS system.
   */
  ros::init(argc, argv, "pega_disco");

  /**
   * NodeHandle is the main access point to communications with the ROS system.
   * The first NodeHandle constructed will fully initialize this node, and the last
   * NodeHandle destructed will close down the node.
   */
  ros::NodeHandle n;

  geometry_msgs::Twist vel;

  /**
   * The advertise() function is how you tell ROS that you want to
   * publish on a given topic name. This invokes a call to the ROS
   * master node, which keeps a registry of who is publishing and who
   * is subscribing. After this advertise() call is made, the master
   * node will notify anyone who is trying to subscribe to this topic name,
   * and they will in turn negotiate a peer-to-peer connection with this
   * node.  advertise() returns a Publisher object which allows you to
   * publish messages on that topic through a call to publish().  Once
   * all copies of the returned Publisher object are destroyed, the topic
   * will be automatically unadvertised.
   *
   * The second parameter to advertise() is the size of the message queue
   * used for publishing messages.  If messages are published more quickly
   * than we can send them, the number here specifies how many messages to
   * buffer up before throwing some away.
   */
  //ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);
  ros::Publisher vel_pub = n.advertise<geometry_msgs::Twist>("cmd_vel", 1);
  ros::Subscriber sub_dist = n.subscribe("distance_sensors", 10, dist);

  ros::Rate loop_rate(10);

  /**
   * A count of how many messages we have sent. This is used to create
   * a unique string for each message.
   */
  std_msgs::String msg;

  std::stringstream ss;
  int count = 0;
  while(ros::ok()){

    if(distancia[0].x < 0.28){
      vel.linear.x = 0;
    }else{
      vel.linear.x = 1;
    }
    //ROS_INFO("%s", vel.linear.to_string);
    printf("%f",distancia[0]);
    vel_pub.publish(vel);
    // for (int i = 0; i < 1000; i++){
    //   vel.linear.x = 0.8;
    //   vel.linear.y = 0;
    //   ROS_INFO("%d", vel.linear.x);
    //   vel_pub.publish(vel);
    // }
    // for (int i = 0; i < 1000; i++){
    //   vel.linear.x = 0;
    //   vel.linear.y = 0.8;
    //   ROS_INFO("%d", vel.linear.x);
    //   vel_pub.publish(vel);
    // }
    ros::spinOnce();
  }

  // while (ros::ok())
  // {
  //   /**
  //    * This is a message object. You stuff it with data, and then publish it.
  //    */
  //   std_msgs::String msg;

  //   std::stringstream ss;
  //   ss << "hello world " << count;
  //   msg.data = ss.str();

  //   ROS_INFO("%s", msg.data.c_str());

  //   /**
  //    * The publish() function is how you send messages. The parameter
  //    * is the message object. The type of this object must agree with the type
  //    * given as a template parameter to the advertise<>() call, as was done
  //    * in the constructor above.
  //    */
  //   chatter_pub.publish(msg);

  //   ros::spinOnce();

  //   loop_rate.sleep();
  //   ++count;
  // }


  return 0;
}