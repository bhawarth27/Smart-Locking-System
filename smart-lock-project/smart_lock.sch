EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:smart_lock-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L adc_bridge_3 U4
U 1 1 622300FC
P 4050 3200
F 0 "U4" H 4050 3200 60  0000 C CNN
F 1 "adc_bridge_3" H 4050 3350 60  0000 C CNN
F 2 "" H 4050 3200 60  0000 C CNN
F 3 "" H 4050 3200 60  0000 C CNN
	1    4050 3200
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_1 U5
U 1 1 6223017F
P 6600 3200
F 0 "U5" H 6600 3200 60  0000 C CNN
F 1 "dac_bridge_1" H 6600 3350 60  0000 C CNN
F 2 "" H 6600 3200 60  0000 C CNN
F 3 "" H 6600 3200 60  0000 C CNN
	1    6600 3200
	1    0    0    -1  
$EndComp
$Comp
L pulse v1
U 1 1 622301FE
P 2150 3600
F 0 "v1" H 1950 3700 60  0000 C CNN
F 1 "pulse" H 1950 3550 60  0000 C CNN
F 2 "R1" H 1850 3600 60  0000 C CNN
F 3 "" H 2150 3600 60  0000 C CNN
	1    2150 3600
	1    0    0    -1  
$EndComp
$Comp
L pulse v2
U 1 1 62230281
P 2700 3700
F 0 "v2" H 2500 3800 60  0000 C CNN
F 1 "pulse" H 2500 3650 60  0000 C CNN
F 2 "R1" H 2400 3700 60  0000 C CNN
F 3 "" H 2700 3700 60  0000 C CNN
	1    2700 3700
	1    0    0    -1  
$EndComp
$Comp
L resistor R1
U 1 1 622302BB
P 2450 3200
F 0 "R1" H 2500 3330 50  0000 C CNN
F 1 "1k" H 2500 3150 50  0000 C CNN
F 2 "" H 2500 3180 30  0000 C CNN
F 3 "" V 2500 3250 30  0000 C CNN
	1    2450 3200
	1    0    0    -1  
$EndComp
$Comp
L resistor R2
U 1 1 62230344
P 3100 3650
F 0 "R2" H 3150 3780 50  0000 C CNN
F 1 "1k" H 3150 3600 50  0000 C CNN
F 2 "" H 3150 3630 30  0000 C CNN
F 3 "" V 3150 3700 30  0000 C CNN
	1    3100 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	2150 3150 2350 3150
Wire Wire Line
	2650 3150 3450 3150
Wire Wire Line
	3150 3000 3150 3550
Connection ~ 3150 3150
Wire Wire Line
	2700 3250 3450 3250
$Comp
L GND #PWR1
U 1 1 622303EB
P 2150 4050
F 0 "#PWR1" H 2150 3800 50  0001 C CNN
F 1 "GND" H 2150 3900 50  0000 C CNN
F 2 "" H 2150 4050 50  0001 C CNN
F 3 "" H 2150 4050 50  0001 C CNN
	1    2150 4050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 62230412
P 2700 4150
F 0 "#PWR2" H 2700 3900 50  0001 C CNN
F 1 "GND" H 2700 4000 50  0000 C CNN
F 2 "" H 2700 4150 50  0001 C CNN
F 3 "" H 2700 4150 50  0001 C CNN
	1    2700 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 62230432
P 3150 3850
F 0 "#PWR3" H 3150 3600 50  0001 C CNN
F 1 "GND" H 3150 3700 50  0000 C CNN
F 2 "" H 3150 3850 50  0001 C CNN
F 3 "" H 3150 3850 50  0001 C CNN
	1    3150 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3700 3450 3350
$Comp
L GND #PWR4
U 1 1 62230546
P 3450 4600
F 0 "#PWR4" H 3450 4350 50  0001 C CNN
F 1 "GND" H 3450 4450 50  0000 C CNN
F 2 "" H 3450 4600 50  0001 C CNN
F 3 "" H 3450 4600 50  0001 C CNN
	1    3450 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3150 7900 3150
Text GLabel 2850 3150 1    60   Input ~ 0
clk
Text GLabel 2950 3250 3    60   Input ~ 0
reset
$Comp
L plot_v1 U2
U 1 1 62230BA1
P 3150 3200
F 0 "U2" H 3150 3700 60  0000 C CNN
F 1 "plot_v1" H 3350 3550 60  0000 C CNN
F 2 "" H 3150 3200 60  0000 C CNN
F 3 "" H 3150 3200 60  0000 C CNN
	1    3150 3200
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U6
U 1 1 62230CC4
P 7750 3200
F 0 "U6" H 7750 3700 60  0000 C CNN
F 1 "plot_v1" H 7950 3550 60  0000 C CNN
F 2 "" H 7750 3200 60  0000 C CNN
F 3 "" H 7750 3200 60  0000 C CNN
	1    7750 3200
	1    0    0    -1  
$EndComp
Text GLabel 7900 3150 2    60   Output ~ 0
out
$Comp
L plot_v1 U3
U 1 1 62230F6E
P 3350 2800
F 0 "U3" H 3350 3300 60  0000 C CNN
F 1 "plot_v1" H 3550 3150 60  0000 C CNN
F 2 "" H 3350 2800 60  0000 C CNN
F 3 "" H 3350 2800 60  0000 C CNN
	1    3350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2600 3350 3250
Connection ~ 3350 3250
$Comp
L plot_v1 U7
U 1 1 62230834
P 3500 3600
F 0 "U7" H 3500 4100 60  0000 C CNN
F 1 "plot_v1" H 3700 3950 60  0000 C CNN
F 2 "" H 3500 3600 60  0000 C CNN
F 3 "" H 3500 3600 60  0000 C CNN
	1    3500 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 3600 3450 3600
Connection ~ 3450 3600
Text GLabel 3550 3600 1    60   Input ~ 0
Din
Wire Wire Line
	7750 3000 7750 3150
Connection ~ 7750 3150
$Comp
L fsm_lock U1
U 1 1 62235D13
P 2450 5050
F 0 "U1" H 5300 6850 60  0000 C CNN
F 1 "fsm_lock" H 5300 7050 60  0000 C CNN
F 2 "" H 5300 7000 60  0000 C CNN
F 3 "" H 5300 7000 60  0000 C CNN
	1    2450 5050
	1    0    0    -1  
$EndComp
$Comp
L pulse v3
U 1 1 62237890
P 3450 4150
F 0 "v3" H 3250 4250 60  0000 C CNN
F 1 "pulse" H 3250 4100 60  0000 C CNN
F 2 "R1" H 3150 4150 60  0000 C CNN
F 3 "" H 3450 4150 60  0000 C CNN
	1    3450 4150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
