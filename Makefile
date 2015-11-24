export ARDUINO_DIR		= $(CURDIR)/../Arduino
export ARDMK_DIR        = $(CURDIR)/../Arduino-Makefile
export ARDUINO_VAR_PATH = $(ARDUINO_DIR)/hardware/arduino/avr/variants
export ARDUINO_CORE_PATH= $(ARDUINO_DIR)/hardware/arduino/avr/cores/arduino
export ARDUINO_PORT		= $(shell arduino-uart-dev)
export BOARD_TAG		= pro
#export BOARD_SUB        = 8MHzatmega328
export BOARD_SUB		= 16MHzatmega328
export ARDUINO_LIBS		= # Timer
export BOARDS_TXT		= $(ARDUINO_DIR)/hardware/arduino/avr/boards.txt
export RESET_CMD		= stty -F $(ARDUINO_PORT) hupcl
export AVRDUDE			= /usr/bin/avrdude
export MONITOR_BAUDRATE	= 57600

#export USER_LIB_PATH

# sudo ln -snf /usr/share/arduino/ard-parse-boards /usr/local/bin/ard-parse-boards

include $(ARDMK_DIR)/Arduino.mk
