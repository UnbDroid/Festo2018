#ifndef _REC_ROBOTINO_RPC_JSON_MESSAGE_WITH_DATA_H_
#define _REC_ROBOTINO_RPC_JSON_MESSAGE_WITH_DATA_H_

#include "rec/rpc/serialization/Primitive.h"
#include "rec/rpc/serialization/ByteArray.h"

#include "rec/robotino/rpc/messages/json_message_with_data_topics.h"

BEGIN_COMPLEX_DATA_DECLARATION_AND_IMPLEMENTATION(rec_robotino_rpc_json_message_with_data_t, 1.0)
ADD_MEMBER(jsonData)
ADD_MEMBER(data)
END_COMPLEX_DATA_DECLARATION_AND_IMPLEMENTATION_CONSTRUCTOR
DECLARE_BYTEARRAY_MEMBER(jsonData)
DECLARE_BYTEARRAY_MEMBER(data)
END_COMPLEX_DATA_DECLARATION_AND_IMPLEMENTATION

USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_mapDir_response)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_mapDir_request)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_0)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_1)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_2)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_3)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_4)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_5)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_6)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_7)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_8)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_9)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_10)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_11)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_12)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_13)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_14)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_15)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_16)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_17)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_18)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_19)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_20)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_21)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_22)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_23)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_24)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_25)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_26)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_27)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_28)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_29)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_30)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_31)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_32)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_33)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_34)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_35)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_36)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_37)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_38)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_39)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_40)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_41)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_42)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_43)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_44)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_45)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_46)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_47)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_48)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_49)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_50)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_51)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_52)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_53)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_54)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_55)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_56)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_57)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_58)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_59)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_60)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_61)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_62)
USE_COMPLEX_DATA_AS_TOPICDATA(rec_robotino_rpc_json_message_with_data_t, rec_robotino_rpc_json_message_with_data_topic_63)

namespace rec
{
	namespace robotino
	{
		namespace rpc
		{
			enum
			{
				rec_robotino_rpc_json_message_with_data_topic_0_num = 0,
				rec_robotino_rpc_json_message_with_data_topic_1_num,
				rec_robotino_rpc_json_message_with_data_topic_2_num,
				rec_robotino_rpc_json_message_with_data_topic_3_num,
				rec_robotino_rpc_json_message_with_data_topic_4_num,
				rec_robotino_rpc_json_message_with_data_topic_5_num,
				rec_robotino_rpc_json_message_with_data_topic_6_num,
				rec_robotino_rpc_json_message_with_data_topic_7_num,
				rec_robotino_rpc_json_message_with_data_topic_8_num,
				rec_robotino_rpc_json_message_with_data_topic_9_num,
				rec_robotino_rpc_json_message_with_data_topic_10_num,
				rec_robotino_rpc_json_message_with_data_topic_11_num,
				rec_robotino_rpc_json_message_with_data_topic_12_num,
				rec_robotino_rpc_json_message_with_data_topic_13_num,
				rec_robotino_rpc_json_message_with_data_topic_14_num,
				rec_robotino_rpc_json_message_with_data_topic_15_num,
				rec_robotino_rpc_json_message_with_data_topic_16_num,
				rec_robotino_rpc_json_message_with_data_topic_17_num,
				rec_robotino_rpc_json_message_with_data_topic_18_num,
				rec_robotino_rpc_json_message_with_data_topic_19_num,
				rec_robotino_rpc_json_message_with_data_topic_20_num,
				rec_robotino_rpc_json_message_with_data_topic_21_num,
				rec_robotino_rpc_json_message_with_data_topic_22_num,
				rec_robotino_rpc_json_message_with_data_topic_23_num,
				rec_robotino_rpc_json_message_with_data_topic_24_num,
				rec_robotino_rpc_json_message_with_data_topic_25_num,
				rec_robotino_rpc_json_message_with_data_topic_26_num,
				rec_robotino_rpc_json_message_with_data_topic_27_num,
				rec_robotino_rpc_json_message_with_data_topic_28_num,
				rec_robotino_rpc_json_message_with_data_topic_29_num,
				rec_robotino_rpc_json_message_with_data_topic_30_num,
				rec_robotino_rpc_json_message_with_data_topic_31_num,
				rec_robotino_rpc_json_message_with_data_topic_32_num,
				rec_robotino_rpc_json_message_with_data_topic_33_num,
				rec_robotino_rpc_json_message_with_data_topic_34_num,
				rec_robotino_rpc_json_message_with_data_topic_35_num,
				rec_robotino_rpc_json_message_with_data_topic_36_num,
				rec_robotino_rpc_json_message_with_data_topic_37_num,
				rec_robotino_rpc_json_message_with_data_topic_38_num,
				rec_robotino_rpc_json_message_with_data_topic_39_num,
				rec_robotino_rpc_json_message_with_data_topic_40_num,
				rec_robotino_rpc_json_message_with_data_topic_41_num,
				rec_robotino_rpc_json_message_with_data_topic_42_num,
				rec_robotino_rpc_json_message_with_data_topic_43_num,
				rec_robotino_rpc_json_message_with_data_topic_44_num,
				rec_robotino_rpc_json_message_with_data_topic_45_num,
				rec_robotino_rpc_json_message_with_data_topic_46_num,
				rec_robotino_rpc_json_message_with_data_topic_47_num,
				rec_robotino_rpc_json_message_with_data_topic_48_num,
				rec_robotino_rpc_json_message_with_data_topic_49_num,
				rec_robotino_rpc_json_message_with_data_topic_50_num,
				rec_robotino_rpc_json_message_with_data_topic_51_num,
				rec_robotino_rpc_json_message_with_data_topic_52_num,
				rec_robotino_rpc_json_message_with_data_topic_53_num,
				rec_robotino_rpc_json_message_with_data_topic_54_num,
				rec_robotino_rpc_json_message_with_data_topic_55_num,
				rec_robotino_rpc_json_message_with_data_topic_56_num,
				rec_robotino_rpc_json_message_with_data_topic_57_num,
				rec_robotino_rpc_json_message_with_data_topic_58_num,
				rec_robotino_rpc_json_message_with_data_topic_59_num,
				rec_robotino_rpc_json_message_with_data_topic_60_num,
				rec_robotino_rpc_json_message_with_data_topic_61_num,
				rec_robotino_rpc_json_message_with_data_topic_62_num,
				rec_robotino_rpc_json_message_with_data_topic_63_num
			};
		}
	}
}

#endif //_REC_ROBOTINO_RPC_JSON_MESSAGE_WITH_DATA_H_