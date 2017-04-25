# This file was automagically generated by mbed.org. For more information, 
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

###############################################################################
# Boiler-plate

# cross-platform directory manipulation
ifeq ($(shell echo $$OS),$$OS)
    MAKEDIR = if not exist "$(1)" mkdir "$(1)"
    RM = rmdir /S /Q "$(1)"
else
    MAKEDIR = '$(SHELL)' -c "mkdir -p \"$(1)\""
    RM = '$(SHELL)' -c "rm -rf \"$(1)\""
endif

OBJDIR := BUILD
# Move to the build directory
ifeq (,$(filter $(OBJDIR),$(notdir $(CURDIR))))
.SUFFIXES:
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKETARGET = '$(MAKE)' --no-print-directory -C $(OBJDIR) -f '$(mkfile_path)' \
		'SRCDIR=$(CURDIR)' $(MAKECMDGOALS)
.PHONY: $(OBJDIR) clean
all:
	+@$(call MAKEDIR,$(OBJDIR))
	+@$(MAKETARGET)
$(OBJDIR): all
Makefile : ;
% :: $(OBJDIR) ; :
clean :
	$(call RM,$(OBJDIR))

else

# trick rules into thinking we are in the root, when we are in the bulid dir
VPATH = ..

# Boiler-plate
###############################################################################
# Project settings

PROJECT := proj


# Project settings
###############################################################################
# Objects and Paths

OBJECTS += C12832/C12832.o
OBJECTS += C12832/GraphicsDisplay.o
OBJECTS += C12832/TextDisplay.o
OBJECTS += LM75B/LM75B.o
OBJECTS += MMA7660/MMA7660.o
OBJECTS += main.o

 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/analogin_api.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/analogout_api.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/can_api.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/cmsis_nvic.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/ethernet_api.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/gpio_api.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/gpio_irq_api.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/i2c_api.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/mbed_board.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/mbed_retarget.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/pinmap.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/port_api.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/pwmout_api.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/rtc_api.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/serial_api.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/sleep.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/spi_api.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/startup_LPC17xx.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/system_LPC17xx.o
 SYS_OBJECTS += mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/us_ticker.o

INCLUDE_PATHS += -I../
INCLUDE_PATHS += -I../.
INCLUDE_PATHS += -I../C12832
INCLUDE_PATHS += -I../LM75B
INCLUDE_PATHS += -I../MMA7660
INCLUDE_PATHS += -I../mbed/.
INCLUDE_PATHS += -I../mbed/TARGET_LPC1768
INCLUDE_PATHS += -I../mbed/TARGET_LPC1768/TARGET_NXP
INCLUDE_PATHS += -I../mbed/TARGET_LPC1768/TARGET_NXP/TARGET_LPC176X
INCLUDE_PATHS += -I../mbed/TARGET_LPC1768/TARGET_NXP/TARGET_LPC176X/TARGET_MBED_LPC1768
INCLUDE_PATHS += -I../mbed/TARGET_LPC1768/TARGET_NXP/TARGET_LPC176X/device
INCLUDE_PATHS += -I../mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM
INCLUDE_PATHS += -I../mbed/drivers
INCLUDE_PATHS += -I../mbed/hal
INCLUDE_PATHS += -I../mbed/platform

LIBRARY_PATHS := -L../mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM 
LIBRARIES := -l:libmbed.a 
LINKER_SCRIPT ?= ../mbed/TARGET_LPC1768/TOOLCHAIN_GCC_ARM/LPC1768.ld

# Objects and Paths
###############################################################################
# Tools and Flags

AS      = 'arm-none-eabi-gcc' '-x' 'assembler-with-cpp' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m3' '-mthumb'
CC      = 'arm-none-eabi-gcc' '-std=gnu99' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m3' '-mthumb'
CPP     = 'arm-none-eabi-g++' '-std=gnu++98' '-fno-rtti' '-Wvla' '-c' '-Wall' '-Wextra' '-Wno-unused-parameter' '-Wno-missing-field-initializers' '-fmessage-length=0' '-fno-exceptions' '-fno-builtin' '-ffunction-sections' '-fdata-sections' '-funsigned-char' '-MMD' '-fno-delete-null-pointer-checks' '-fomit-frame-pointer' '-Os' '-mcpu=cortex-m3' '-mthumb'
LD      = 'arm-none-eabi-gcc'
ELF2BIN = 'arm-none-eabi-objcopy'
PREPROC = 'arm-none-eabi-cpp' '-E' '-P' '-Wl,--gc-sections' '-Wl,--wrap,main' '-Wl,--wrap,_malloc_r' '-Wl,--wrap,_free_r' '-Wl,--wrap,_realloc_r' '-Wl,--wrap,_calloc_r' '-Wl,--wrap,exit' '-Wl,--wrap,atexit' '-mcpu=cortex-m3' '-mthumb'


C_FLAGS += -std=gnu99
C_FLAGS += -DDEVICE_ERROR_PATTERN=1
C_FLAGS += -DFEATURE_LWIP=1
C_FLAGS += -D__MBED__=1
C_FLAGS += -DDEVICE_I2CSLAVE=1
C_FLAGS += -DTARGET_LIKE_MBED
C_FLAGS += -DTARGET_NXP
C_FLAGS += -DTARGET_LPC176X
C_FLAGS += -D__MBED_CMSIS_RTOS_CM
C_FLAGS += -DDEVICE_RTC=1
C_FLAGS += -DTOOLCHAIN_object
C_FLAGS += -D__CMSIS_RTOS
C_FLAGS += -DTOOLCHAIN_GCC
C_FLAGS += -DDEVICE_CAN=1
C_FLAGS += -DTARGET_LIKE_CORTEX_M3
C_FLAGS += -DTARGET_CORTEX_M
C_FLAGS += -DARM_MATH_CM3
C_FLAGS += -DDEVICE_ANALOGOUT=1
C_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
C_FLAGS += -DTARGET_M3
C_FLAGS += -DDEVICE_PWMOUT=1
C_FLAGS += -DDEVICE_INTERRUPTIN=1
C_FLAGS += -DTARGET_LPCTarget
C_FLAGS += -DDEVICE_I2C=1
C_FLAGS += -DDEVICE_PORTOUT=1
C_FLAGS += -D__CORTEX_M3
C_FLAGS += -DMBED_BUILD_TIMESTAMP=1493135352.64
C_FLAGS += -DDEVICE_STDIO_MESSAGES=1
C_FLAGS += -DTARGET_LPC1768
C_FLAGS += -DTARGET_RELEASE
C_FLAGS += -DDEVICE_PORTINOUT=1
C_FLAGS += -DDEVICE_SERIAL_FC=1
C_FLAGS += -DTARGET_MBED_LPC1768
C_FLAGS += -DDEVICE_PORTIN=1
C_FLAGS += -DDEVICE_SLEEP=1
C_FLAGS += -DTOOLCHAIN_GCC_ARM
C_FLAGS += -DDEVICE_SPI=1
C_FLAGS += -DDEVICE_ETHERNET=1
C_FLAGS += -DDEVICE_SPISLAVE=1
C_FLAGS += -DDEVICE_ANALOGIN=1
C_FLAGS += -DDEVICE_SERIAL=1
C_FLAGS += -DDEVICE_SEMIHOST=1
C_FLAGS += -DDEVICE_DEBUG_AWARENESS=1
C_FLAGS += -DDEVICE_LOCALFILESYSTEM=1
C_FLAGS += -include
C_FLAGS += mbed_config.h

CXX_FLAGS += -std=gnu++98
CXX_FLAGS += -fno-rtti
CXX_FLAGS += -Wvla
CXX_FLAGS += -DDEVICE_ERROR_PATTERN=1
CXX_FLAGS += -DFEATURE_LWIP=1
CXX_FLAGS += -D__MBED__=1
CXX_FLAGS += -DDEVICE_I2CSLAVE=1
CXX_FLAGS += -DTARGET_LIKE_MBED
CXX_FLAGS += -DTARGET_NXP
CXX_FLAGS += -DTARGET_LPC176X
CXX_FLAGS += -D__MBED_CMSIS_RTOS_CM
CXX_FLAGS += -DDEVICE_RTC=1
CXX_FLAGS += -DTOOLCHAIN_object
CXX_FLAGS += -D__CMSIS_RTOS
CXX_FLAGS += -DTOOLCHAIN_GCC
CXX_FLAGS += -DDEVICE_CAN=1
CXX_FLAGS += -DTARGET_LIKE_CORTEX_M3
CXX_FLAGS += -DTARGET_CORTEX_M
CXX_FLAGS += -DARM_MATH_CM3
CXX_FLAGS += -DDEVICE_ANALOGOUT=1
CXX_FLAGS += -DTARGET_UVISOR_UNSUPPORTED
CXX_FLAGS += -DTARGET_M3
CXX_FLAGS += -DDEVICE_PWMOUT=1
CXX_FLAGS += -DDEVICE_INTERRUPTIN=1
CXX_FLAGS += -DTARGET_LPCTarget
CXX_FLAGS += -DDEVICE_I2C=1
CXX_FLAGS += -DDEVICE_PORTOUT=1
CXX_FLAGS += -D__CORTEX_M3
CXX_FLAGS += -DMBED_BUILD_TIMESTAMP=1493135352.64
CXX_FLAGS += -DDEVICE_STDIO_MESSAGES=1
CXX_FLAGS += -DTARGET_LPC1768
CXX_FLAGS += -DTARGET_RELEASE
CXX_FLAGS += -DDEVICE_PORTINOUT=1
CXX_FLAGS += -DDEVICE_SERIAL_FC=1
CXX_FLAGS += -DTARGET_MBED_LPC1768
CXX_FLAGS += -DDEVICE_PORTIN=1
CXX_FLAGS += -DDEVICE_SLEEP=1
CXX_FLAGS += -DTOOLCHAIN_GCC_ARM
CXX_FLAGS += -DDEVICE_SPI=1
CXX_FLAGS += -DDEVICE_ETHERNET=1
CXX_FLAGS += -DDEVICE_SPISLAVE=1
CXX_FLAGS += -DDEVICE_ANALOGIN=1
CXX_FLAGS += -DDEVICE_SERIAL=1
CXX_FLAGS += -DDEVICE_SEMIHOST=1
CXX_FLAGS += -DDEVICE_DEBUG_AWARENESS=1
CXX_FLAGS += -DDEVICE_LOCALFILESYSTEM=1
CXX_FLAGS += -include
CXX_FLAGS += mbed_config.h

ASM_FLAGS += -x
ASM_FLAGS += assembler-with-cpp
ASM_FLAGS += -D__CMSIS_RTOS
ASM_FLAGS += -D__MBED_CMSIS_RTOS_CM
ASM_FLAGS += -D__CORTEX_M3
ASM_FLAGS += -DARM_MATH_CM3


LD_FLAGS :=-Wl,--gc-sections -Wl,--wrap,main -Wl,--wrap,_malloc_r -Wl,--wrap,_free_r -Wl,--wrap,_realloc_r -Wl,--wrap,_calloc_r -Wl,--wrap,exit -Wl,--wrap,atexit -mcpu=cortex-m3 -mthumb 
LD_SYS_LIBS :=-Wl,--start-group -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys -Wl,--end-group

# Tools and Flags
###############################################################################
# Rules

.PHONY: all lst size


all: $(PROJECT).bin $(PROJECT).hex size


.asm.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.s.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.S.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Assemble: $(notdir $<)"
	@$(AS) -c $(ASM_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.c.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CC) $(C_FLAGS) $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	+@$(call MAKEDIR,$(dir $@))
	+@echo "Compile: $(notdir $<)"
	@$(CPP) $(CXX_FLAGS) $(INCLUDE_PATHS) -o $@ $<


$(PROJECT).link_script.ld: $(LINKER_SCRIPT)
	@$(PREPROC) $< -o $@




$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS) $(PROJECT).link_script.ld 
	+@echo "link: $(notdir $@)"
	@$(LD) $(LD_FLAGS) -T $(filter %.ld, $^) $(LIBRARY_PATHS) --output $@ $(filter %.o, $^) $(LIBRARIES) $(LD_SYS_LIBS)

	@echo ""
	@echo "*****"
	@echo "***** You must modify vector checksum value in *.bin and *.hex files."
	@echo "*****"
	@echo ""


$(PROJECT).bin: $(PROJECT).elf
	$(ELF2BIN) -O binary $< $@
	+@echo "===== bin file ready to flash: $(OBJDIR)/$@ =====" 

$(PROJECT).hex: $(PROJECT).elf
	$(ELF2BIN) -O ihex $< $@


# Rules
###############################################################################
# Dependencies

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)
endif

# Dependencies
###############################################################################
