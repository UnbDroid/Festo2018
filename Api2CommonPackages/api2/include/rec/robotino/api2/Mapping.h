//  Copyright (C) 2004-2011, Robotics Equipment Corporation GmbH

#ifndef _REC_ROBOTINO_API2_MAPPING_H_
#define _REC_ROBOTINO_API2_MAPPING_H_

#include "rec/robotino/api2/defines.h"
#include "rec/robotino/api2/ComObject.h"

namespace rec
{
        namespace robotino
        {
                 namespace api2
                {

                        class
#ifdef REC_ROBOTINO_API2_CLASS_ATTRIBUTE
        REC_ROBOTINO_API2_CLASS_ATTRIBUTE
#endif
                        Mapping : public ComObject
                        {
                        public:
                                Mapping();
                                

                                virtual ~Mapping();

                               void setComId( const ComId& id );

                                void set_map( const char* map, int height, int width, float resolution, float offsetx, float offsety);

                                void set_poseOnMap(float x, float y, double rotation_deg);
                        };
                }
        }
}
#endif //_REC_ROBOTINO_API2_MAPPING_H_