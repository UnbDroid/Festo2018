#include <iostream>
#include <cv_bridge/cv_bridge.h>
#include <image_transport/image_transport.h>
#include <ros/ros.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include "geometry_msgs/Point32.h"
#include "geometry_msgs/Twist.h"
#include <sstream>
#include <cv.h>
#include <highgui.h>
#include "std_msgs/Int8.h"

using namespace cv;
using namespace std;

static const std::string OPENCV_WINDOW = "Image window";

class ImageConverter {
    ros::NodeHandle nh_;
    ros::NodeHandle nh;
    ros::NodeHandle nh_pos;
    ros::Publisher preto_pub = nh.advertise<std_msgs::Int8>("quant_preto", 1);
    //ros::Publisher chat_publisher = nh_pos.advertise<int>("", 1);
    geometry_msgs::Twist pos;
    geometry_msgs::Twist vel;

	float vel_x, vel_y;

    int perto = 0;

    int quant_preto = 0;

    image_transport::ImageTransport it_;
    image_transport::Subscriber image_sub_;
    image_transport::Publisher image_pub_;
    // ros::Publisher pubDebug;

    int iLowH = 0;
    int iHighH = 180;

    int iLowS = 0; 
    int iHighS = 255;

    int iLowV = 0;
    int iHighV = 40;

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
        // if (cv_ptr->image.rows > 60 && cv_ptr->image.cols > 60)
        //     cv::circle(cv_ptr->image, cv::Point(50, 50), 10, CV_RGB(255, 0, 0));

        // std_msgs::String debugMsg;
        // debugMsg.data = "teste";
        // pubDebug.publish(debugMsg);

        Mat imgTmp = cv_ptr->image;

        Mat imgLines = Mat::zeros( imgTmp.size(), CV_8UC3 );;

        Mat imgOriginal = cv_ptr->image;

        Mat imgHSV;

        cvtColor(imgOriginal, imgHSV, COLOR_BGR2HSV); //Convert the captured frame from BGR to HSV
 
        Mat imgThresholded;

        inRange(imgHSV, Scalar(iLowH, iLowS, iLowV), Scalar(iHighH, iHighS, iHighV), imgThresholded); //Threshold the image

        //morphological opening (removes small objects from the foreground)
        erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
        dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) ); 

        //morphological closing (removes small holes from the foreground)
        dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) ); 
        erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );

        // //Calculate the moments of the thresholded image
        // Moments oMoments = moments(imgThresholded);

        // double dM01 = oMoments.m01;
        // double dM10 = oMoments.m10;
        // double dArea = oMoments.m00;

        // if (dArea > 5000)
        // {
        //     //calculate the position of the ball
        //     int posX = dM10 / dArea;
        //     int posY = dM01 / dArea;        
                    
        //     if (iLastX >= 0 && iLastY >= 0 && posX >= 0 && posY >= 0)
        //     {
        //         //Draw a red line from the previous point to the current point
        //         line(imgLines, Point(posX, posY), Point(iLastX, iLastY), Scalar(0,0,255), 2);
        //     }

        //     pos.linear.x = posX;
        //     pos.linear.y = posY;
        //     chat_publisher.publish(pos);

        //     iLastX = posX;
        //     iLastY = posY;

        // }

        CvSeq* contours;  //hold the pointer to a contour in the memory block
        CvSeq* result;   //hold sequence of points of a contour
        CvMemStorage *storage = cvCreateMemStorage(0); //storage area for all contours
        
        IplImage tmp=imgThresholded;

        IplImage tmp_orig=imgOriginal;

        //finding all contours in the image
        cvFindContours(&tmp, storage, &contours, sizeof(CvContour), CV_RETR_LIST, CV_CHAIN_APPROX_SIMPLE, cvPoint(0,0));

        quant_preto = 0;
        //iterating through each contour
        while(contours)
        {
            //obtain a sequence of points of contour, pointed by the variable 'contour'
            result = cvApproxPoly(contours, sizeof(CvContour), storage, CV_POLY_APPROX_DP, cvContourPerimeter(contours)*0.02, 0);
                
            //if there are 3  vertices  in the contour(It should be a triangle)
            if(result->total==3 )
            {
                //iterating through each point
                CvPoint *pt[3];
                for(int i=0;i<3;i++){
                    pt[i] = (CvPoint*)cvGetSeqElem(result, i);
                }
        
                //drawing lines around the triangle
                cvLine(&tmp_orig, *pt[0], *pt[1], cvScalar(255,0,0),4);
                cvLine(&tmp_orig, *pt[1], *pt[2], cvScalar(255,0,0),4);
                cvLine(&tmp_orig, *pt[2], *pt[0], cvScalar(255,0,0),4);
            
            }

            //if there are 4 vertices in the contour(It should be a quadrilateral)
            else if(result->total==4 )
            {
                //iterating through each point
                CvPoint *pt[4];
                for(int i=0;i<4;i++){
                    pt[i] = (CvPoint*)cvGetSeqElem(result, i);
                }
        
                //drawing lines around the quadrilateral
                cvLine(&tmp_orig, *pt[0], *pt[1], cvScalar(0,255,0),4);
                cvLine(&tmp_orig, *pt[1], *pt[2], cvScalar(0,255,0),4);
                cvLine(&tmp_orig, *pt[2], *pt[3], cvScalar(0,255,0),4);
                cvLine(&tmp_orig, *pt[3], *pt[0], cvScalar(0,255,0),4);   
            }

        //if there are 7  vertices  in the contour(It should be a heptagon)
            else if(result->total ==7  )
            {
                //iterating through each point
                CvPoint *pt[7];
                for(int i=0;i<7;i++){
                    pt[i] = (CvPoint*)cvGetSeqElem(result, i);
                }
        
                //drawing lines around the heptagon
                cvLine(&tmp_orig, *pt[0], *pt[1], cvScalar(0,0,255),4);
                cvLine(&tmp_orig, *pt[1], *pt[2], cvScalar(0,0,255),4);
                cvLine(&tmp_orig, *pt[2], *pt[3], cvScalar(0,0,255),4);
                cvLine(&tmp_orig, *pt[3], *pt[4], cvScalar(0,0,255),4);
                cvLine(&tmp_orig, *pt[4], *pt[5], cvScalar(0,0,255),4);
                cvLine(&tmp_orig, *pt[5], *pt[6], cvScalar(0,0,255),4);
                cvLine(&tmp_orig, *pt[6], *pt[0], cvScalar(0,0,255),4);
            }

            //obtain the next contour
            contours = contours->h_next; 
            quant_preto = quant_preto + 1;
        }

        std_msgs::Int8 qt_preto;
        qt_preto.data = quant_preto;
        printf("%d\n",quant_preto);
        imgOriginal = imgOriginal + imgLines;
        // Update GUI Window
        cv::imshow(OPENCV_WINDOW, imgOriginal);
        cv::waitKey(3);
        preto_pub.publish(qt_preto);
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
