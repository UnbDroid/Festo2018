#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <ros/ros.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include "std_msgs/String.h"

using namespace cv;
using namespace std;

static const std::string OPENCV_WINDOW = "Image window";

class ImageConverter {
    ros::NodeHandle nh_;
    image_transport::ImageTransport it_;
    image_transport::Subscriber image_sub_;
    image_transport::Publisher image_pub_;
    // ros::Publisher pubDebug;

    int iLowH = 170;
    int iHighH = 179;

    int iLowS = 150; 
    int iHighS = 255;

    int iLowV = 60;
    int iHighV = 255;

    int iLastX = -1; 
    int iLastY = -1;

   public:
    ImageConverter() : it_(nh_) {
        // Subscribe to input video feed and publish output video feed
        image_sub_ =
            it_.subscribe("/image_raw", 1, &ImageConverter::imageCb, this);
        image_pub_ = it_.advertise("/image_converter/output_video", 1);

        // pubDebug = nh_.advertise<std_msgs::String>("debug", 1000);

        cv::namedWindow(OPENCV_WINDOW);
    }

    ~ImageConverter() { cv::destroyWindow(OPENCV_WINDOW); }

    void imageCb(const sensor_msgs::ImageConstPtr& msg) {
        cv_bridge::CvImagePtr cv_ptr;
        try {
            cv_ptr =
                cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
        } catch (cv_bridge::Exception& e) {
            ROS_ERROR("cv_bridge exception: %s", e.what());
            return;
        }
        // Draw an example circle on the video stream
        if (cv_ptr->image.rows > 60 && cv_ptr->image.cols > 60)
            cv::circle(cv_ptr->image, cv::Point(50, 50), 10, CV_RGB(255, 0, 0));

        // std_msgs::String debugMsg;
        // debugMsg.data = "teste";
        // pubDebug.publish(debugMsg);

        Mat imgTmp = cv_ptr->image;

        Mat imgLines = Mat::zeros( imgTmp.size(), CV_8UC3 );;

        Mat imgOriginal;

        Mat imgHSV;

        cvtColor(imgOriginal, imgHSV, COLOR_BGR2HSV); //Convert the captured frame from BGR to HSV
 
        Mat imgThresholded;

        // inRange(imgHSV, Scalar(iLowH, iLowS, iLowV), Scalar(iHighH, iHighS, iHighV), imgThresholded); //Threshold the image

        // //morphological opening (removes small objects from the foreground)
        // erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
        // dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) ); 

        // //morphological closing (removes small holes from the foreground)
        // dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) ); 
        // erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );

        // //Calculate the moments of the thresholded image
        // Moments oMoments = moments(imgThresholded);

        // double dM01 = oMoments.m01;
        // double dM10 = oMoments.m10;
        // double dArea = oMoments.m00;

        // if (dArea > 10000)
        // {
        //     //calculate the position of the ball
        //     int posX = dM10 / dArea;
        //     int posY = dM01 / dArea;        
                    
        //     if (iLastX >= 0 && iLastY >= 0 && posX >= 0 && posY >= 0)
        //     {
        //         //Draw a red line from the previous point to the current point
        //         line(imgLines, Point(posX, posY), Point(iLastX, iLastY), Scalar(0,0,255), 2);
        //     }

        //     iLastX = posX;
        //     iLastY = posY;
        // }


        // Update GUI Window
        cv::imshow(OPENCV_WINDOW, imgTmp);
        cv::waitKey(3);

        // Output modified video stream
        image_pub_.publish(cv_ptr->toImageMsg());
    }
};

int main(int argc, char** argv) {
    ros::init(argc, argv, "image_converter");
    ImageConverter ic;
    ros::spin();
    return 0;
}
