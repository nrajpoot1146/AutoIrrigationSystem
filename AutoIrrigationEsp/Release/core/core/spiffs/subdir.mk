################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266\spiffs\spiffs_cache.c \
C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266\spiffs\spiffs_check.c \
C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266\spiffs\spiffs_gc.c \
C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266\spiffs\spiffs_hydrogen.c \
C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266\spiffs\spiffs_nucleus.c 

C_DEPS += \
.\core\core\spiffs\spiffs_cache.c.d \
.\core\core\spiffs\spiffs_check.c.d \
.\core\core\spiffs\spiffs_gc.c.d \
.\core\core\spiffs\spiffs_hydrogen.c.d \
.\core\core\spiffs\spiffs_nucleus.c.d 

AR_OBJ += \
.\core\core\spiffs\spiffs_cache.c.o \
.\core\core\spiffs\spiffs_check.c.o \
.\core\core\spiffs\spiffs_gc.c.o \
.\core\core\spiffs\spiffs_hydrogen.c.o \
.\core\core\spiffs\spiffs_nucleus.c.o 


# Each subdirectory must supply rules for building sources it contributes
core\core\spiffs\spiffs_cache.c.o: C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266\spiffs\spiffs_cache.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\tools\xtensa-lx106-elf-gcc\2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-IC:/Users/blkCapHax/eclipse-workspace-cpp/AutoIrrigationEsp/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -fno-exceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0   -DARDUINO=10802 -DARDUINO_ESP8266_GENERIC -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="\"ESP8266_GENERIC\"" -DLED_BUILTIN=2 -DFLASHMODE_DOUT  -DESP8266   -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\variants\generic" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\libraries\ArduinoJson\5.13.5\src" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\libraries\ESP8266WiFi\src" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\libraries\Blynk\0.6.1\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\spiffs\spiffs_check.c.o: C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266\spiffs\spiffs_check.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\tools\xtensa-lx106-elf-gcc\2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-IC:/Users/blkCapHax/eclipse-workspace-cpp/AutoIrrigationEsp/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -fno-exceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0   -DARDUINO=10802 -DARDUINO_ESP8266_GENERIC -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="\"ESP8266_GENERIC\"" -DLED_BUILTIN=2 -DFLASHMODE_DOUT  -DESP8266   -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\variants\generic" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\libraries\ArduinoJson\5.13.5\src" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\libraries\ESP8266WiFi\src" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\libraries\Blynk\0.6.1\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\spiffs\spiffs_gc.c.o: C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266\spiffs\spiffs_gc.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\tools\xtensa-lx106-elf-gcc\2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-IC:/Users/blkCapHax/eclipse-workspace-cpp/AutoIrrigationEsp/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -fno-exceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0   -DARDUINO=10802 -DARDUINO_ESP8266_GENERIC -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="\"ESP8266_GENERIC\"" -DLED_BUILTIN=2 -DFLASHMODE_DOUT  -DESP8266   -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\variants\generic" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\libraries\ArduinoJson\5.13.5\src" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\libraries\ESP8266WiFi\src" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\libraries\Blynk\0.6.1\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\spiffs\spiffs_hydrogen.c.o: C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266\spiffs\spiffs_hydrogen.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\tools\xtensa-lx106-elf-gcc\2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-IC:/Users/blkCapHax/eclipse-workspace-cpp/AutoIrrigationEsp/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -fno-exceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0   -DARDUINO=10802 -DARDUINO_ESP8266_GENERIC -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="\"ESP8266_GENERIC\"" -DLED_BUILTIN=2 -DFLASHMODE_DOUT  -DESP8266   -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\variants\generic" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\libraries\ArduinoJson\5.13.5\src" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\libraries\ESP8266WiFi\src" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\libraries\Blynk\0.6.1\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '

core\core\spiffs\spiffs_nucleus.c.o: C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266\spiffs\spiffs_nucleus.c
	@echo 'Building file: $<'
	@echo 'Starting C compile'
	"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\tools\xtensa-lx106-elf-gcc\2.5.0-3-20ed2b9/bin/xtensa-lx106-elf-gcc" -D__ets__ -DICACHE_FLASH -U__STRICT_ANSI__ "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/include" "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/lwip2/include" "-IC:\eclipse\cpp-2018-12\/arduinoPlugin/packages/esp8266/hardware/esp8266/2.5.0/tools/sdk/libc/xtensa-lx106-elf/include" "-IC:/Users/blkCapHax/eclipse-workspace-cpp/AutoIrrigationEsp/Release/core" -c -Wall -Wextra -Os -g -Wpointer-arith -Wno-implicit-function-declaration -Wl,-EL -fno-inline-functions -nostdlib -mlongcalls -mtext-section-literals -falign-functions=4 -MMD -std=gnu99 -ffunction-sections -fdata-sections -fno-exceptions -DF_CPU=80000000L -DLWIP_OPEN_SRC -DTCP_MSS=536 -DLWIP_FEATURES=1 -DLWIP_IPV6=0   -DARDUINO=10802 -DARDUINO_ESP8266_GENERIC -DARDUINO_ARCH_ESP8266 -DARDUINO_BOARD="\"ESP8266_GENERIC\"" -DLED_BUILTIN=2 -DFLASHMODE_DOUT  -DESP8266   -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\cores\esp8266" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\variants\generic" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\libraries\ArduinoJson\5.13.5\src" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\packages\esp8266\hardware\esp8266\2.5.0\libraries\ESP8266WiFi\src" -I"C:\eclipse\cpp-2018-12\arduinoPlugin\libraries\Blynk\0.6.1\src" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -D__IN_ECLIPSE__=1 "$<"  -o  "$@"
	@echo 'Finished building: $<'
	@echo ' '


