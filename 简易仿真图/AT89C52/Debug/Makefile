###############################################################################
# Makefile for project 
###############################################################################

## General options
PROJECT = 
MCU = AT89C52
COMPILER = "SDCC for 8051"
TARGET = Debug
SHELL = C:\Windows\system32\cmd.exe

## Tools general options
CCFLAGS=-c -mmcs51 --model-small --debug --noinduction --nooverlay -DMICROCONTROLLER_AT89X52
LDFLAGS=-mmcs51 --model-small --debug --noinduction --nooverlay

## Processing Tools
CC=sdcc.exe
LD=sdcc.exe
#  E:/AppData/KeilProject/Automatic obstacle avoidance trolley with C51/简易仿真图/AT89C52/Debug/Debug.cdb: TOOL=LD
#     E:/AppData/KeilProject/Automatic obstacle avoidance trolley with C51/简易仿真图/AT89C52/Debug/main.rel: TOOL=CC
#        E:/AppData/KeilProject/Automatic obstacle avoidance trolley with C51/简易仿真图/AT89C52/main.c

# Build tree:
all:	Debug

Debug:	Debug.cdb

Debug.cdb:	main.rel 
	$(LD) -Wl"-u" --out-fmt-ihx $(LDFLAGS)  -o "./Debug.hex" "main.rel"

main.rel:	../main.c 
	$(CC) $(CCFLAGS)  -o "main.rel" "../main.c"

# tidy - delete all temporary files which are not involved in the target generation
tidy:
	rm -rf ./Debug.lnk
	rm -rf ./Debug.map
	rm -rf ./Debug.mem
	rm -rf ./main.lst
	rm -rf ./main.rst
	rm -rf ./main.sym
	rm -rf ./main.asm
	rm -rf ./main.adb

# cleanup - delete all generated files
clean:	tidy
	rm -rf Debug.cdb
	rm -rf main.rel
	rm -rf Debug.hex

