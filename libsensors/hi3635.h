/*
 * Copyright (C) 2008 The Android Open Source Project
 * Copyright (C) 2017 Jonathan Jason Dennis [Meticulus]
 *					theonejohnnyd@gmail.com
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/* Sensor handles */
#define HANDLE_ACCELEROMETER	(0)
#define HANDLE_MAGNETIC_FIELD	(1)
#define HANDLE_ORIENTATION		(2)
#define HANDLE_GYROSCOPE		(3)
#define HANDLE_LIGHT			(4)
#define HANDLE_PRESSURE			(5)
#define HANDLE_TEMPERATURE		(6)
#define HANDLE_PROXIMITY		(8)
#define HANDLE_MAX			    (9)

/* Sensor handles */
#define MINDELAY_ACCELEROMETER	(1000)
#define MINDELAY_MAGNETIC_FIELD	(1000)
#define MINDELAY_ORIENTATION	(1000)
#define MINDELAY_GYROSCOPE		(1000)
#define MINDELAY_LIGHT			(0)
#define MINDELAY_PRESSURE		(1000)
#define MINDELAY_TEMPERATURE	(0)
#define MINDELAY_PROXIMITY		(0)

/* Constants */
#define LSM_M_MAX_CAL_COUNT 300
#define RADIANS_TO_DEGREES (180.0/M_PI)
#define DEGREES_TO_RADIANS (M_PI/180.0)
#define MAX_LENGTH 150
#define SIZE_OF_BUF 100

/* Functions */
#define CONVERT_A  (GRAVITY_EARTH * (1.0f/1000.0f))
#define CONVERT_RADIANS 0.0174533

/* Light defines */
#define LIGHT_POWER 0.75f
#define LIGHT_RANGE 3000.0f
#define LIGHT_RESOLUTION 1.0f

/* Magnetometer defines */
#define MAG_POWER 6.8f
#define MAG_RANGE 2000.0f
#define MAG_RESOLUTION 0.0625f

/* Accelerometer defines */
#define ACC_POWER  0.23f
#define ACC_RANGE  78.4533f
#define ACC_RESOLUTION  0.009576807f

/* Proximity defines */
#define PROX_POWER 0.75f
#define PROX_RANGE  5.0f
#define PROX_RESOLUTION  5.0f

/* Orientation defines */
#define ALPS_POWER 0.2f
#define ALPS_RANGE 360.0f
#define ALPS_RESOLUTION 1.0f

/* light paths*/
char const *const PATH_ENABLE_LIGHT = 
		"/sys/class/sensors/als_sensor/enable";
char const *const PATH_DATA_LIGHT =
		"/sys/class/sensors/als_sensor/get_data";
char const *const PATH_DELAY_LIGHT =
		"/sys/class/sensors/als_sensor/set_delay";

/* magnetometer paths*/
char const *const PATH_ENABLE_MAG = 
		"/sys/class/sensors/mag_sensor/enable";
char const *const PATH_DATA_MAG =
		"/sys/class/sensors/mag_sensor/get_data";
char const *const PATH_DELAY_MAG =
		"/sys/class/sensors/mag_sensor/set_delay";

/* accelerometer paths*/
char const *const PATH_ENABLE_ACC = 
		"/sys/class/sensors/acc_sensor/enable";
char const *const PATH_DATA_ACC =
		"/sys/class/sensors/acc_sensor/get_data";
char const *const PATH_DELAY_ACC =
		"/sys/class/sensors/acc_sensor/set_delay";

/* proximity paths*/
char const *const PATH_ENABLE_PROX = 
		"/sys/class/sensors/ps_sensor/enable";
char const *const PATH_DATA_PROX =
		"/sys/class/sensors/ps_sensor/get_data";
char const *const PATH_DELAY_PROX =
		"/sys/class/sensors/ps_sensor/set_delay";

/* To store all Sensors data*/
typedef struct {
   sensors_event_t sensor_data[8];
   int length;
} Sensor_messagequeue;

/* sensor API integration */

static const struct sensor_t sSensorList[] = {
	{"Light Sensor",
		"Taos",
		1,
		HANDLE_LIGHT,
		SENSOR_TYPE_LIGHT,
		LIGHT_RANGE,
		LIGHT_RESOLUTION,
		LIGHT_POWER,
		MINDELAY_LIGHT,
		0,
		0,
		"vu.co.meticulus.taos.proximity",
		"",
		200000,
		0,
		{NULL},
	},
	{"Proximity Sensor",
		"Taos",
		1,
		HANDLE_PROXIMITY,
		SENSOR_TYPE_PROXIMITY,
		PROX_RANGE,
		PROX_RESOLUTION,
		PROX_POWER,
		MINDELAY_PROXIMITY,
		0,
		0,
		"vu.co.meticulus.taos.proximity",
		"",
		200000,
		0,
		{NULL},
	},
	{"AK09911 3-axis Magnetic field sensor",
		"Asahi Kasei Microdevices",
		1,
		HANDLE_MAGNETIC_FIELD,
		SENSOR_TYPE_MAGNETIC_FIELD,
		MAG_RANGE,
		MAG_RESOLUTION,
		MAG_POWER,
		MINDELAY_MAGNETIC_FIELD,
		0,
		0,
		"vu.co.meticulus.alps.magnetic",
		"",
		200000,
		0,
		{NULL},
	},
	{"lis3dh 3-axis Accelerometer",
		"STMicroelectronics",
		1,
		HANDLE_ACCELEROMETER,
		SENSOR_TYPE_ACCELEROMETER,
		ACC_RANGE,
		ACC_RESOLUTION,
		ACC_POWER,
		MINDELAY_ACCELEROMETER,
		0,
		0,
		"vu.co.meticulus.bosch.accerometer",
		"",
		200000,
		0,
		{NULL},
	},
	{"ALPS Orientation Sensor",
		"alps electric co., ltd",
		1,
		HANDLE_ORIENTATION,
		SENSOR_TYPE_ORIENTATION,
		ALPS_RANGE,
		ALPS_RESOLUTION,
		ALPS_POWER,
		MINDELAY_ORIENTATION,
		0,
		0,
		"vu.co.meticulus.alps.orientation",
		"",
		200000,
		0,
		{NULL},
	},
};

static const struct sensor_t sSensorListEx[] = {
	{"Light Sensor",
		"Taos",
		1,
		HANDLE_LIGHT,
		SENSOR_TYPE_LIGHT,
		LIGHT_RANGE,
		LIGHT_RESOLUTION,
		LIGHT_POWER,
		MINDELAY_LIGHT,
		0,
		0,
		"vu.co.meticulus.taos.proximity",
		"",
		200000,
		0,
		{NULL},
	},
	{"Proximity Sensor",
		"Taos",
		1,
		HANDLE_PROXIMITY,
		SENSOR_TYPE_PROXIMITY,
		PROX_RANGE,
		PROX_RESOLUTION,
		PROX_POWER,
		MINDELAY_PROXIMITY,
		0,
		0,
		"vu.co.meticulus.taos.proximity",
		"",
		200000,
		0,
		{NULL},
	},
	{"AK09911 3-axis Magnetic field sensor",
		"Asahi Kasei Microdevices",
		1,
		HANDLE_MAGNETIC_FIELD,
		SENSOR_TYPE_MAGNETIC_FIELD,
		MAG_RANGE,
		MAG_RESOLUTION,
		MAG_POWER,
		MINDELAY_MAGNETIC_FIELD,
		0,
		0,
		"vu.co.meticulus.alps.magnetic",
		"",
		200000,
		0,
		{NULL},
	},
	{"lis3dh 3-axis Accelerometer",
		"STMicroelectronics",
		1,
		HANDLE_ACCELEROMETER,
		SENSOR_TYPE_ACCELEROMETER,
		ACC_RANGE,
		ACC_RESOLUTION,
		ACC_POWER,
		MINDELAY_ACCELEROMETER,
		0,
		0,
		"vu.co.meticulus.bosch.accerometer",
		"",
		200000,
		0,
		{NULL},
	},
	{"ALPS Orientation Sensor",
		"alps electric co., ltd",
		1,
		HANDLE_ORIENTATION,
		SENSOR_TYPE_ORIENTATION,
		ALPS_RANGE,
		ALPS_RESOLUTION,
		ALPS_POWER,
		MINDELAY_ORIENTATION,
		0,
		0,
		"vu.co.meticulus.alps.orientation",
		"",
		200000,
		0,
		{NULL},
	},
	{"Emulated Gyroscope Sensor",
		"Met-Dev",
		1,
		HANDLE_GYROSCOPE,
		SENSOR_TYPE_GYROSCOPE,
		ALPS_RANGE,
		ALPS_RESOLUTION,
		ALPS_POWER,
		MINDELAY_GYROSCOPE,
		0,
		0,
		"vu.co.meticulus.fake.gyroscope",
		"",
		200000,
		0,
		{NULL},
	},
};

static int acc_id;
static int light_id;