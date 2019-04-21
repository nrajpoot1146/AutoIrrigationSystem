################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
..\sloeber.ino.cpp 

LINK_OBJ += \
.\sloeber.ino.cpp.o 

CPP_DEPS += \
.\sloeber.ino.cpp.d 


# Each subdirectory must supply rules for building sources it contributes
sloeber.ino.cpp.o: ..\sloeber.ino.cpp
	@echo 'Building file: $<'
	@echo 'Starting C++ compile'
	"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\tools\xtensa-lx106-elf-gcc\2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-g++" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-IC:/Users/blkCapHax/eclipse-workspace-cpp/AutoIrrigationEsp/Release/core" -c -Wall -Wextra -Os -g -mlongcalls -mtext-section-literals -fno-rtti -falign-functions=4 -std=c++11 -MMD -ffunction-sections -fdata-sections -fno-exceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0   -DARDUINO=10802 -DARDUINO_ESP8266_GENERIC -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="\"ESP8266_GENERIC\"" -DLED_BUILTIN=2 -DFLASHMODE_DOUT  -DESP8266   -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\variants\generic" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\libraries\ArduinoJson\5.13.5\src" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\libraries\ESP8266WiFi\src" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\libraries\Blynk\0.6.1\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 -x c++ "$<"  -o  "$@"

	@echo 'Finished building: $<'
	@echo ' '


