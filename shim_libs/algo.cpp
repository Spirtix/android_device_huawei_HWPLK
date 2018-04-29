//#include <gui/Sensor.h>
#include <gui/SensorManager.h>

extern "C" int _ZNK7android13SensorManager13getSensorListEPPKPKNS_6SensorE(void* obj,android::Sensor const* const** list) {
    android::SensorManager* sm = static_cast<android::SensorManager*>(obj);
    return sm->getSensorList(list);
}