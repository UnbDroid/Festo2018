#ifndef _REC_GRAPPLER_USBPROTOCOL_H_
#define _REC_GRAPPLER_USBPROTOCOL_H_

/**
Richtung: PC -> LPC2378
maximale Nachrichtenl�nge ist 64 byte

Nachricht DynamixelCommand wird mit Status oder StatusReceiveTimeout beantwortet
Byte	Beschreibung
0		Bytel�nge der kompletten Nachricht
1		0
2		Pr�fsumme
3		Kanalauswahl
		0 - RX64
		1 - RX28
		2 - RX10
4		0xFF
5		0xFF
6		ID
7		LENGTH (Anzahl der Parameter + 2) 
8		INSTRUCTION
9		PARAMETER
.
N		CHECKSUM


Nachricht SetAllPositions wird nur im Fehlerfall von StatusReceiveTimeout beantwortet
Byte	Beschreibung
0		39 - Bytel�nge der kompletten Nachricht
1		1
2		Pr�fsumme
3		RX64 ID 1 Pos low
4		RX64 ID 1 Pos high
5		RX64 ID 1 Speed low
6		RX64 ID 1 Speed high
7		RX64 ID 2 Pos low
8		RX64 ID 2 Pos high
9		RX64 ID 2 Speed low
10		RX64 ID 2 Speed high
11		RX64 ID 3 Pos low
12		RX64 ID 3 Pos high
13		RX64 ID 3 Speed low
14		RX64 ID 3 Speed high
15		RX28 ID 1 Pos low
16		RX28 ID 1 Pos high
17		RX28 ID 1 Speed low
18		RX28 ID 1 Speed high
19		RX28 ID 2 Pos low
20		RX28 ID 2 Pos high
21		RX28 ID 2 Speed low
22		RX28 ID 2 Speed high
23		RX28 ID 3 Pos low
24		RX28 ID 3 Pos high
25		RX28 ID 3 Speed low
26		RX28 ID 3 Speed high
27		RX10 ID 1 Pos low
28		RX10 ID 1 Pos high
29		RX10 ID 1 Speed low
30		RX10 ID 1 Speed high
31		RX10 ID 2 Pos low
32		RX10 ID 2 Pos high
33		RX10 ID 2 Speed low
34		RX10 ID 2 Speed high
35		RX10 ID 3 Pos low
36		RX10 ID 3 Pos high
37		RX10 ID 3 Speed low
38		RX10 ID 3 Speed high

Nachricht GetDetectedServos
Byte	Beschreibung
0		3 - Bytel�nge der kompletten Nachricht
1		2
2		0xFA - Pr�fsumme

Nachricht EnableAutoUpdate
Byte	Beschreibung
0		4 - Bytel�nge der kompletten Nachricht
1		3
2		Pr�fsumme
3		0 - Disable
		1 - Enable

Nachricht ResetChannel
Byte	Beschreibung
0		4 - Bytel�nge der kompletten Nachricht
1		4
2		Pr�fsumme
3		Channel

Nachricht GetAllPositions
Byte	Beschreibung
0		3 - Bytel�nge der kompletten Nachricht
1		5
2		0xF7 - Pr�fsumme

Nachricht EnablePower
Byte	Beschreibung
0		5 - Bytel�nge der kompletten Nachricht
1		6
2		Pr�fsumme
3		Channel
4		0 - Disable
		1 - Enable

Nachricht ToggleTorque
Byte	Beschreibung
0		3 - Bytel�nge der kompletten Nachricht
1		7
2		0xF5 - Pr�fsumme

Nachricht GetAllAxesLimits
Byte	Beschreibung
0		3 - Bytel�nge der kompletten Nachricht
1		8
2		0xF4 - Pr�fsumme

************************************************************************************
Richtung: LPC2378 -> PC
maximale Nachrichtenl�nge ist 64 byte

Nachricht StatusReceiveTimeout
Byte	Beschreibung
0		6 //Bytel�nge der kompletten Nachricht
1		0x1
2		Pr�fsumme
3		Kanalnummer
4		ID
5		Servonummer (falls vorhanden)

Nachricht Status
Byte	Beschreibung
0		Bytel�nge der kompletten Nachricht
1		0x2
2		Pr�fsumme
3		0xFF
4		0xFF
5		ID
6		LENGTH (Anzahl der Parameter + 2) 
7		ERROR
8		PARAMETER
.
N		CHECKSUM

Nachricht Fehler
Byte	Beschreibung
0		Bytel�nge der kompletten Nachricht
1		0x3
2		Pr�fsumme
3		Fehler code

Nachricht Motoren ein/ausgeschaltet
Byte	Beschreibung
0		0x4 //Bytel�nge der kompletten Nachricht
1		0x4
2		Pr�fsumme
3		1 - eingeschaltet
0 - ausgeschaltet

Nachricht Position speichern
Byte	Beschreibung
0		21 //Bytel�nge der kompletten Nachricht
1		0x5
2		Pr�fsumme
3		RX64 ID 1 Pos low
4		RX64 ID 1 Pos high
5		RX64 ID 2 Pos low
6		RX64 ID 2 Pos high
7		RX64 ID 3 Pos low
8		RX64 ID 3 Pos high
9		RX28 ID 1 Pos low
10		RX28 ID 1 Pos high
11		RX28 ID 2 Pos low
12		RX28 ID 2 Pos high
13		RX28 ID 3 Pos low
14		RX28 ID 3 Pos high
15		RX10 ID 1 Pos low
16		RX10 ID 1 Pos high
17		RX10 ID 2 Pos low
18		RX10 ID 2 Pos high
19		RX10 ID 3 Pos low
20		RX10 ID 3 Pos high

Nachricht AllServoPositions
Byte	Beschreibung
0		48 //Bytel�nge der kompletten Nachricht
1		0x6
2		Pr�fsumme
3		RX64 ID 1 Pos low
4		RX64 ID 1 Pos high
5		RX64 ID 1 Speed low
6		RX64 ID 1 Speed high
7		RX64 ID 1 Error
8		RX64 ID 2 Pos low
9		RX64 ID 2 Pos high
10		RX64 ID 2 Speed low
11		RX64 ID 2 Speed high
12		RX64 ID 2 Error
13		RX64 ID 3 Pos low
14		RX64 ID 3 Pos high
15		RX64 ID 3 Speed low
16		RX64 ID 3 Speed high
17		RX64 ID 3 Error
18		RX28 ID 1 Pos low
19		RX28 ID 1 Pos high
20		RX28 ID 1 Speed low
21		RX28 ID 1 Speed high
22		RX28 ID 1 Error
23		RX28 ID 2 Pos low
24		RX28 ID 2 Pos high
25		RX28 ID 2 Speed low
26		RX28 ID 2 Speed high
27		RX28 ID 2 Error
28		RX28 ID 3 Pos low
29		RX28 ID 3 Pos high
30		RX28 ID 3 Speed low
31		RX28 ID 3 Speed high
32		RX28 ID 3 Error
33		RX10 ID 1 Pos low
34		RX10 ID 1 Pos high
35		RX10 ID 1 Speed low
36		RX10 ID 1 Speed high
37		RX10 ID 1 Error
38		RX10 ID 2 Pos low
39		RX10 ID 2 Pos high
40		RX10 ID 2 Speed low
41		RX10 ID 2 Speed high
41		RX10 ID 2 Error
43		RX10 ID 3 Pos low
44		RX10 ID 3 Pos high
45		RX10 ID 3 Speed low
46		RX10 ID 3 Speed high
47		RX10 ID 3 Error

Nachricht DetectedServos
Byte	Beschreibung
0		12 //Bytel�nge der kompletten Nachricht
1		0x7
2		Pr�fsumme
3		RX64 ID1 found
4		RX64 ID2 found
5		RX64 ID3 found
6		RX28 ID1 found
7		RX28 ID2 found
8		RX28 ID3 found
9		RX10 ID1 found
10		RX10 ID2 found
11		RX10 ID3 found

(0xFF = Kanal -> Kein Servo erkannt)


Nachricht AllAxesLimits
Byte	Beschreibung
0		39 //Bytel�nge der kompletten Nachricht
1		0x8
2		Pr�fsumme
3		RX64 ID 1 CW Limit low
4		RX64 ID 1 CW Limit high
5		RX64 ID 1 CCW Limit low
6		RX64 ID 1 CCW Limit high
7		RX64 ID 2 CW Limit low
8		RX64 ID 2 CW Limit high
9		RX64 ID 2 CCW Limit low
10		RX64 ID 2 CCW Limit high
11		RX64 ID 3 CW Limit low
12		RX64 ID 3 CW Limit high
13		RX64 ID 3 CCW Limit low
14		RX64 ID 3 CCW Limit high
15		RX28 ID 1 CW Limit low
16		RX28 ID 1 CW Limit high
17		RX28 ID 1 CCW Limit low
18		RX28 ID 1 CCW Limit high
19		RX28 ID 2 CW Limit low
20		RX28 ID 2 CW Limit high
21		RX28 ID 2 CCW Limit low
22		RX28 ID 2 CCW Limit high
23		RX28 ID 3 CW Limit low
24		RX28 ID 3 CW Limit high
25		RX28 ID 3 CCW Limit low
26		RX28 ID 3 CCW Limit high
27		RX10 ID 1 CW Limit low
28		RX10 ID 1 CW Limit high
29		RX10 ID 1 CCW Limit low
30		RX10 ID 1 CCW Limit high
31		RX10 ID 2 CW Limit low
32		RX10 ID 2 CW Limit high
33		RX10 ID 2 CCW Limit low
34		RX10 ID 2 CCW Limit high
35		RX10 ID 3 CW Limit low
36		RX10 ID 3 CW Limit high
37		RX10 ID 3 CCW Limit low
38		RX10 ID 3 CCW Limit high

Nachricht KeepAlive wird alle 100ms gesendet
Byte	Beschreibung
0		3 //Bytel�nge der kompletten Nachricht
1		0xFF	
2		Pr�fsumme
*/

/*PC -> LPC*/
#define REC_GRAPPLER_DynamixelCommand		 0
#define REC_GRAPPLER_SetAllPositions			 1
#define REC_GRAPPLER_GetDetectedServos		 2
#define REC_GRAPPLER_EnableAutoUpdate		 3
#define REC_GRAPPLER_ResetChannel			 4
#define REC_GRAPPLER_GetAllPositions			 5
#define REC_GRAPPLER_EnablePower				 6
#define REC_GRAPPLER_ToggleTorque			 7
#define REC_GRAPPLER_GetAllAxesLimits		 8
#define REC_GRAPPLER_ResetDevice				 9
#define REC_GRAPPLER_GetInfo					10
#define REC_GRAPPLER_NUMMESSAGES_PC2LPC		11

/*LPC -> PC*/
#define REC_GRAPPLER_StatusReceiveTimeout	1
#define REC_GRAPPLER_Status					2
#define REC_GRAPPLER_Error					3
#define REC_GRAPPLER_EnableMotors			4
#define REC_GRAPPLER_StorePosition			5
#define REC_GRAPPLER_AllServoPositions		6
#define REC_GRAPPLER_DetectedServos			7
#define REC_GRAPPLER_AllAxesLimits			8
#define REC_GRAPPLER_Info					9

#define REC_GRAPPLER_InvalidMessageLength	0
#define REC_GRAPPLER_InvalidMessageType		1
#define REC_GRAPPLER_UnsupportedChannel		2
#define REC_GRAPPLER_KeepAlive 0xFF

#define REC_GRAPPLER_RX64CHANNEL 0
#define REC_GRAPPLER_RX28CHANNEL 1
#define REC_GRAPPLER_RX10CHANNEL 2

static unsigned char rec_grappler_lpcToPC_checksum( const char* message )
{
	unsigned char i;
	unsigned short sum = message[0];
	sum += message[1];

	for( i=3; i<message[0]; i++ )
	{
		sum += message[i];
	}

	return ~( sum & 0xFF );
}

static unsigned char rec_grappler_isMessageCorrect( const char* message )
{
	unsigned char i;
	unsigned short sum = 0;

	for( i=0; i<message[0]; i++ )
	{
		sum += message[i];
	}

	sum = sum & 0xFF;

	return ( sum == 0xFF );
}


#ifdef HAVE_QT
#include <QtCore>

namespace rec
{
	namespace grappler
	{
		/*
		RX servos operate in a range from 0� to 300�.
		0� = 0
		300� = 0x3ff = 1023
		=> 1� = 3.41 dynamixel units
		furthermore: dynamixel speed * 0.111 = rpm
		
		MX servos operate in a range from 0� to 360�
		0� = 0
		360� = 0xFFF = 4095
		=> 1� = 11.375 dynamixel units
		furthermore: dynamixel speed * 0.114 = rpm
		*/
		
		#ifdef WIN32
		static bool MX_servos_found;
		static const float RX_angle_factor;
		static const float RX_speed_factor;
		static const float MX_angle_factor;
		static const float MX_speed_factor;
		#else
		static bool MX_servos_found = true;
		static const float RX_angle_factor = 3.41f;
		static const float RX_speed_factor = 0.111f;
		static const float MX_angle_factor = 11.375f;
		static const float MX_speed_factor = 0.114f;
		#endif
		
		static quint16 deg_to_dynamixel_angle( float deg )
		{
			if(MX_servos_found)
			{
				return static_cast<quint16>( MX_angle_factor * deg );
			}
			else
			{
				return static_cast<quint16>( RX_angle_factor * deg );
			}
			
		}

		static float dynamixel_angle_to_deg( quint16 angle )
		{
			if(MX_servos_found)
			{
				return static_cast<float>( angle ) / MX_angle_factor;
			}
			else
			{
				return static_cast<float>( angle ) / RX_angle_factor;
			}
		}

		static quint16 rpm_to_dynamixel_speed( float rpm )
		{
			float rpmabs = fabs( rpm );

			quint16 speed = 0;
			
			if(MX_servos_found)
			{
				speed = static_cast<quint16>( rpmabs / MX_speed_factor );
			}
			else
			{
				speed = static_cast<quint16>( rpmabs / RX_speed_factor );
			}
			
			if( speed > 0x3FF )
			{
				speed = 0x3FF;
			}

			if( rpm < 0.0f )
			{
				speed = 0x3FF + speed;
			}

			return speed;
		}

		static float dynamixel_speed_to_rpm( int speed )
		{
			if(MX_servos_found)
			{
				return MX_speed_factor * speed;
			}
			else
			{
				return RX_speed_factor * speed;
			}
		}

		class HardwareInfo;

		namespace serial
		{
			typedef enum
			{
				RX64Channel = REC_GRAPPLER_RX64CHANNEL,
				RX28Channel = REC_GRAPPLER_RX28CHANNEL,
				RX10Channel = REC_GRAPPLER_RX10CHANNEL
			}
			Channel;

			class USBProtocol
			{
			public:
				static void setProtocolVerion(int version);
				static int protocolVersion() { return _protocolVersion; }

				static QByteArray encodeDynamixelCommand( Channel channel, unsigned char id, unsigned char instr, const QByteArray& params = QByteArray() );
				
				static QByteArray encodeSetAllPositions( const QVector<quint16>& positions, const QVector<quint16>& speeds );
				static bool decodeSetAllPositions( const QByteArray& data, QVector<quint16>* positions, QVector<quint16>* speeds );

				static QByteArray encodeEnableAutoUpdate( bool enable );
				static QByteArray encodeEnablePower( int channel, bool enable );

				static unsigned char dynamixelChecksum( const QByteArray& data );

				static bool isMessageValid( const char* data, unsigned int dataSize );

				static bool isKeepAliveMessage( const char* data, unsigned int dataSize );

				static bool decodeStatusMessage( const char* data, unsigned int dataSize, int* id, int* error, QByteArray* statusData );
				static bool decodeEnableMotorsMessage( const char* data, unsigned int dataSize, bool* enable );
				static rec::grappler::HardwareInfo decodeDetectedServos( const char* data );

				static QByteArray encodeAllServoPositions( const QVector<quint16>& positions, const QVector<quint16>& speeds );
				static rec::grappler::HardwareInfo decodeAllServoPositions( const char* data );
				
				static rec::grappler::HardwareInfo decodeStorePosition( const char* data );

				static QByteArray encodeAllAxesLimits( const QVector<quint16>& cwLimits, const QVector<quint16>& ccwLimits );
				static rec::grappler::HardwareInfo decodeAllAxesLimits( const char* data );

				static bool decodeInfoMessage( const char* data, unsigned int dataSize, int* majorVer, int* minorVer, int* patchVer );

				static const unsigned char getDetectedServosMessage[];
				static const int getDetectedServosMessageSize;

				static const unsigned char getAllPositionsMessage[];
				static const int getAllPositionsMessageSize;

				static const unsigned char getToggleTorqueMessage[];
				static const int getToggleTorqueMessageSize;

				static const unsigned char getAllAxesLimitsMessage[];
				static const int getAllAxesLimitsMessageSize;

				static const unsigned char getInfoMessage[];
				static const int getInfoMessageSize;

				static const unsigned char resetDeviceMessage[];
				static const unsigned char resetDeviceEnterBootloaderMessage[];
				static const int resetDeviceMessageSize;

			private:
				static int _protocolVersion;
			};

			QString channelFriendlyName( Channel channel );
		}
	}
}
#endif //HAVE_QT

#endif //_REC_GRAPPLER_USBPROTOCOL_H_
