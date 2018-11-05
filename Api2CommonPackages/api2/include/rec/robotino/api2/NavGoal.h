//  Copyright (C) 2004-2008, Robotics Equipment Corporation GmbH

#ifndef _REC_ROBOTINO_API2_NAVGOAL_H_
#define _REC_ROBOTINO_API2_NAVGOAL_H_

#include "rec/robotino/api2/defines.h"
#include "rec/robotino/api2/ComObject.h"

namespace rec
{
            namespace robotino
        {    
                 namespace api2
                { 
                        class NavGoalImpl;
 
                        class
#ifdef REC_ROBOTINO_API2_CLASS_ATTRIBUTE
        REC_ROBOTINO_API2_CLASS_ATTRIBUTE
#endif
                        NavGoal : public ComObject
                        {
                                friend class NavGoalImpl;
                        public:
                                NavGoal();

                                virtual ~NavGoal();

                               void setComId( const ComId& id );

                               void processEvents();

                                void value(float* x,float* y,double* r) const;

                                virtual void navGoalEvent( float, float, double );

                        private:
                                NavGoalImpl* _impl;
                        };
                }
        }
}
#endif