//  Copyright (C) 2004-2008, Robotics Equipment Corporation GmbH

#ifndef _REC_ROBOTINO_API2_INITIALPOSE_H_
#define _REC_ROBOTINO_API2_INITIALPOSE_H_

#include "rec/robotino/api2/defines.h"
#include "rec/robotino/api2/ComObject.h"

namespace rec
{
        namespace robotino
        {    
                namespace api2
                { 
                        class InitialPoseImpl;

                        class
#ifdef REC_ROBOTINO_API2_CLASS_ATTRIBUTE
        REC_ROBOTINO_API2_CLASS_ATTRIBUTE
#endif
                        InitialPose : public ComObject
                        {
                                friend class InitialPoseImpl;
                        public:
                                InitialPose();

                                virtual ~InitialPose();

                                void setComId( const ComId& id );

                                void processEvents();

                                void value(float* x,float* y,double* r) const;

                                virtual void initialPoseEvent( float, float, double );

                        private:
                                InitialPoseImpl* _impl;
                        };
                }
        }
}
#endif