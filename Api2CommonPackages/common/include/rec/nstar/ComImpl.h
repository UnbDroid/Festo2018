//  Copyright (C) 2004-2009, Robotics Equipment Corporation GmbH

#ifndef _REC_NSTAR_COMIMPL_H_
#define _REC_NSTAR_COMIMPL_H_

#include <QtCore>

#include "rec/nstar/Com.h"
#include "rec/serialport/SerialPort.h"

namespace rec
{
	namespace nstar
	{
		class ComImpl : public QThread
		{
		public:
			ComImpl( Com* com );

			bool open( rec::nstar::Com::port_t port );

			bool open( const QString& port );

			bool isOpen() const;

			void close();

			int version() const;

			QString portString() const;

			unsigned int speed() const;

			bool setReportFlags(
				bool report_pose,
				unsigned int spot_report_mask,
				unsigned int magnitude_report_mask,
				unsigned int spot_avail_threshold );

			void setRoom( unsigned int room );

			unsigned int room() const;

			bool setCeilingCal( float ceilingCal );

			float ceilingCal() const;

			float readCeilingCal();

			void setRoomAndCeilingCal( unsigned int room, float ceilingCal );

			bool startContinuousReport();

			bool stopContinuousReport();

			bool singleReport();

		private:
			unsigned char checksum( const unsigned char* buffer, unsigned int bufferSize ) const;
			bool isPacketCorrect( const unsigned char *packet, unsigned int len);
			float convert_to_float( const unsigned char *buffer, unsigned int input_pos);
			void convert_float_to_char_array(unsigned char *buf, float f);

			bool open( rec::serialport::Port port );

			bool getVersion();
			bool setBaudRate( unsigned int speed );
			bool setCeilingCal_i( float ceilingCal );

			void run();
			void stop();
			
			void checkSpotMask();

			void reset();

			/**
			Receives messages from the detector. Calls the Event functions, if a corresponding packet is received;
			*/
			bool receivePacket();

			void reportPoseEvent( const PoseReport& report );

			void reportSpotPositionEvent( const SpotPositionReport& report );

			void reportMagnitudeEvent( const MagnitudeReport& report );

			void reportEndEvent();

			void reportError( const char* error );

			static const float ceilingCalConversionFactor;

			Com* _com;
			
			rec::serialport::SerialPort _serialPort;

			int _version;

			bool _singleReportInProgress;

			std::vector<int> _spotpos_id;
			std::vector<int> _magnitude_id;

			unsigned int _sequenceNumber;

			unsigned int _room;
			float _ceilingCal;

			bool _run;
		};
	}
}

#endif //_REC_NSTAR_COMIMPL_H_
