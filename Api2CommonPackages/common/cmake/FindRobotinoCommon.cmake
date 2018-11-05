IF( NOT ROBOTINOCOMMON_DIR )
	IF( WIN32 )
		IF( CMAKE_SIZEOF_VOID_P EQUAL 8 )
			STRING( REPLACE "\\" "/" ROBOTINOCOMMON_DIR "$ENV{ROBOTINOCOMMON64_DIR}" )
		ELSE( CMAKE_SIZEOF_VOID_P EQUAL 8 )
			STRING( REPLACE "\\" "/" ROBOTINOCOMMON_DIR "$ENV{ROBOTINOCOMMON32_DIR}" )
		ENDIF( CMAKE_SIZEOF_VOID_P EQUAL 8 )
		ELSE( WIN32 )
				SET( ROBOTINOCOMMON_DIR "/usr/local/robotino/common" )
		ENDIF( WIN32 )
ENDIF( NOT ROBOTINOCOMMON_DIR )
	
FIND_PATH(
   ROBOTINOCOMMON_INCLUDE_DIR 
   NAMES
   rec/robotino/rpc/Client.h
   PATHS
   ${ROBOTINOCOMMON_DIR}/include
   NO_DEFAULT_PATH
)


FIND_LIBRARY(
  REC_ROBOTINO_RPC_RELEASE_LIBRARY
  NAMES rec_robotino_rpc
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES REC_ROBOTINO_RPC_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_ROBOTINO_NAVIGATION_RELEASE_LIBRARY
  NAMES rec_robotino_navigation
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_ROBOTINO_NAVIGATION_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_ROBOTINO_DAEMONS_RELEASE_LIBRARY
  NAMES rec_robotino_daemons
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_ROBOTINO_DAEMONS_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_CV_LT_RELEASE_LIBRARY
  NAMES rec_cv_lt
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_CV_LT_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_SERIALPORT_RELEASE_LIBRARY
  NAMES rec_serialport
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_SERIALPORT_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_DATAEXCHANGE_LT_RELEASE_LIBRARY
  NAMES rec_dataexchange_lt
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_DATAEXCHANGE_LT_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_VEMA_RELEASE_LIBRARY
  NAMES rec_vema
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_VEMA_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_EA09_MESSAGES_RELEASE_LIBRARY
  NAMES rec_ea09_messages
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_EA09_MESSAGES_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_CRUIZCORE_RELEASE_LIBRARY
  NAMES rec_cruizcore
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_CRUIZCORE_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_GRAPPLER_RELEASE_LIBRARY
  NAMES rec_grappler
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_GRAPPLER_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_ROBOTINO_IMAGESENDER_RELEASE_LIBRARY
  NAMES rec_robotino_imagesender
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_ROBOTINO_IMAGESENDER_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_LASERRANGEFINDER_RELEASE_LIBRARY
  NAMES rec_laserrangefinder
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_LASERRANGEFINDER_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_NSTAR_RELEASE_LIBRARY
  NAMES rec_nstar
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_NSTAR_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_NSTAR2_RELEASE_LIBRARY
  NAMES rec_nstar2
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_NSTAR2_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_PCAN_RELEASE_LIBRARY
  NAMES rec_pcan
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_PCAN_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_ROBOTINO_SERVER_RELEASE_LIBRARY
  NAMES rec_robotino_server
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_ROBOTINO_SERVER_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_ROBOTINOXT_RELEASE_LIBRARY
  NAMES rec_robotinoxt
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_ROBOTINOXT_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_ROBOTINO3_IOCOM_RELEASE_LIBRARY
  NAMES rec_robotino3_iocom
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_ROBOTINO3_IOCOM_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_ROBOTINO3_SERIALIO_RELEASE_LIBRARY
  NAMES rec_robotino3_serialio
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_ROBOTINO3_SERIALIO_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_ROBOTINO3_FLEETCOM_RELEASE_LIBRARY
  NAMES rec_robotino3_fleetcom
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_ROBOTINO3_FLEETCOM_RELEASE_LIBRARY )

FIND_LIBRARY(
  REC_YAML_RELEASE_LIBRARY
  NAMES rec_yaml
  PATHS "${ROBOTINOCOMMON_DIR}/lib"
)
SET( ROBOTINOCOMMON_LIBRARIES ${ROBOTINOCOMMON_LIBRARIES} REC_YAML_RELEASE_LIBRARY )

IF( WIN32 )
	FIND_LIBRARY(
		REC_ROBOTINO_RPC_DEBUG_LIBRARY
		NAMES rec_robotino_rpcd
		PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
		REC_ROBOTINO_NAVIGATION_DEBUG_LIBRARY
		NAMES rec_robotino_navigationd
		PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
		REC_ROBOTINO_DAEMONS_DEBUG_LIBRARY
		NAMES rec_robotino_daemonsd
		PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
		REC_CV_LT_DEBUG_LIBRARY
		NAMES rec_cv_ltd
		PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
		REC_SERIALPORT_DEBUG_LIBRARY
		NAMES rec_serialportd
		PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
		REC_DATAEXCHANGE_LT_DEBUG_LIBRARY
		NAMES rec_dataexchange_ltd
		PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
		REC_VEMA_DEBUG_LIBRARY
		NAMES rec_vemad
		PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
		REC_EA09_MESSAGES_DEBUG_LIBRARY
		NAMES rec_ea09_messagesd
		PATHS "${ROBOTINOCOMMON_DIR}/lib"
		)

	FIND_LIBRARY(
	  REC_CRUIZCORE_DEBUG_LIBRARY
	  NAMES rec_cruizcored
	  PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
	  REC_GRAPPLER_DEBUG_LIBRARY
	  NAMES rec_grapplerd
	  PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
	  REC_ROBOTINO_IMAGESENDER_DEBUG_LIBRARY
	  NAMES rec_robotino_imagesenderd
	  PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
	  REC_LASERRANGEFINDER_DEBUG_LIBRARY
	  NAMES rec_laserrangefinderd
	  PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
	  REC_NSTAR_DEBUG_LIBRARY
	  NAMES rec_nstard
	  PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
	  REC_NSTAR2_DEBUG_LIBRARY
	  NAMES rec_nstar2d
	  PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
		REC_PCAN_DEBUG_LIBRARY
		NAMES rec_pcand
		PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
		REC_ROBOTINO_SERVER_DEBUG_LIBRARY
		NAMES rec_robotino_serverd
		PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
	  REC_ROBOTINOXT_DEBUG_LIBRARY
	  NAMES rec_robotinoxtd
	  PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
		REC_ROBOTINO3_IOCOM_DEBUG_LIBRARY
		NAMES rec_robotino3_iocomd
		PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_LIBRARY(
		REC_ROBOTINO3_SERIALIO_DEBUG_LIBRARY
		NAMES rec_robotino3_serialiod
		PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)
	
	FIND_LIBRARY(
		REC_ROBOTINO3_FLEETCOM_DEBUG_LIBRARY
		NAMES rec_robotino3_fleetcomd
		PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)
	
	FIND_LIBRARY(
		REC_YAML_DEBUG_LIBRARY
		NAMES rec_yaml
		PATHS "${ROBOTINOCOMMON_DIR}/lib"
	)

	FIND_FILE( REC_ROBOTINO_RPC_DEBUG_DLL rec_robotino_rpcd.dll ${ROBOTINOCOMMON_DIR}/bin NO_DEFAULT_PATH )
	FIND_FILE( REC_ROBOTINO_RPC_RELEASE_DLL rec_robotino_rpc.dll ${ROBOTINOCOMMON_DIR}/bin NO_DEFAULT_PATH )

	SET(
		ROBOTINOCOMMON_RELEASE_DLLS
		"${REC_ROBOTINO_RPC_RELEASE_DLL}"
	)

	SET(
		ROBOTINOCOMMON_DEBUG_DLLS
		"${REC_ROBOTINO_RPC_DEBUG_DLL}"
	)
ENDIF( WIN32 )
	
SET( ROBOTINOCOMMON_FOUND 0 )

IF( ROBOTINOCOMMON_INCLUDE_DIR )
	SET( ROBOTINOCOMMON_FOUND 1 )
ELSE( ROBOTINOCOMMON_INCLUDE_DIR )
	IF( ROBOTINOCOMMON_FIND_REQUIRED )
		MESSAGE(FATAL_ERROR "Could not find ROBOTINOCOMMON. Download from http://wiki.openrobotino.org")
	ENDIF( ROBOTINOCOMMON_FIND_REQUIRED )
ENDIF( ROBOTINOCOMMON_INCLUDE_DIR )

IF( ROBOTINOCOMMON_FOUND )
	INCLUDE_DIRECTORIES(
		${ROBOTINOCOMMON_INCLUDE_DIR}
	)
	
	IF( WIN32 )
		FOREACH( var ${ROBOTINOCOMMON_LIBRARIES} )
			STRING( REPLACE "_RELEASE_" "_" LIB_NAME "${var}" )
			STRING( REPLACE "_RELEASE_" "_DEBUG_" DEBUG_LIB_NAME "${var}" )
			SET( ${LIB_NAME} optimized ${${var}} debug ${${DEBUG_LIB_NAME}} )
		ENDFOREACH( var )
	ELSE( WIN32 )
		FOREACH( var ${ROBOTINOCOMMON_LIBRARIES} )
			STRING( REPLACE "_RELEASE_" "_" LIB_NAME "${var}" )
			SET( ${LIB_NAME} ${${var}} )
		ENDFOREACH( var )
	ENDIF( WIN32 )
	
ENDIF( ROBOTINOCOMMON_FOUND )

MACRO( COPY_ROBOTINOCOMMON_DLLS releaseTarget debugTarget )
  FOREACH( var ${ROBOTINOCOMMON_RELEASE_DLLS} )
    CONFIGURE_FILE( ${var} ${releaseTarget} COPYONLY )
  ENDFOREACH( var )
  FOREACH( var ${ROBOTINOCOMMON_DEBUG_DLLS} )
    CONFIGURE_FILE( ${var} ${debugTarget} COPYONLY )
  ENDFOREACH( var )
ENDMACRO( COPY_ROBOTINOCOMMON_DLLS )

