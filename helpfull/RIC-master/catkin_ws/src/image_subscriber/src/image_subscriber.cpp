#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>

using namespace ros;
using namespace cv;
using namespace std;

void imageCallback(const sensor_msgs::ImageConstPtr& image)
{
sensor_msgs::ImageConstPtr imageInOne_;
imageInOne_ = image;

sensor_msgs::ImageConstPtr imageInTwo_;
imageInTwo_ = image;


cv_bridge::CvImagePtr imageInOne = cv_bridge::toCvCopy(imageInOne_);
cv_bridge::CvImagePtr imageInTwo = cv_bridge::toCvCopy(imageInTwo_);


Mat imageDifferOne = imageInOne->image;
Mat imageDifferTwo = imageInTwo->image;
Mat imageDiff;
absdiff(imageDifferOne, imageDifferTwo, imageDiff);

Mat imageOut_ = imageDiff;
    cv::imshow("view", imageOut_);
//cv::imshow("view", imageDifferOne);
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "image_subscriber");
  ros::NodeHandle nh;
  cv::namedWindow("view");
  cv::startWindowThread();
  image_transport::ImageTransport it(nh);
  image_transport::Subscriber sub = it.subscribe("camera/rgb/image_color", 0.01, imageCallback);
  ros::spin();
  cv::destroyWindow("view");
}
