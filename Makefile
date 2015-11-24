export BOARD_TAG		= pro
export BOARD_SUB		= 16MHzatmega328 # 8MHzatmega328
export ARCHITECTURE		= avr

export ARDUINO_DIR		= $(CURDIR)/../Arduino
export ARDUINO_VERSION	= 105
export ARDMK_DIR        = $(CURDIR)/../Arduino-Makefile
export ARDUINO_PORT		= $(shell arduino-uart-dev)
export ARDUINO_LIBS		= # Timer
export RESET_CMD		= stty -F $(ARDUINO_PORT) hupcl

export MONITOR_BAUDRATE	= 57600
export CPPFLAGS			= -DMONITOR_BAUDRATE=$(MONITOR_BAUDRATE)

include $(ARDMK_DIR)/Arduino.mk
