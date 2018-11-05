#ifndef _REC_ROBOTINO3_FLEETCOM_StopMappingREQUEST_H_
#define _REC_ROBOTINO3_FLEETCOM_StopMappingREQUEST_H_

#include "rec/robotino3/fleetcom/Command.h"

namespace rec
{
	namespace robotino3
	{
		namespace fleetcom
		{
			class StopMappingRequest : public Request
			{
			public:
				StopMappingRequest()
					: Request( Request::StopMappingRequestId )
				{
				}

				QString encode() const
				{
					return "StopMapping";
				}

				QString print() const
				{
					return encode();
				}
			};

			typedef QSharedPointer< StopMappingRequest > StopMappingRequestPointer;

		}
	}
}

#endif //_REC_ROBOTINO3_FLEETCOM_StopMappingREQUEST_H_
