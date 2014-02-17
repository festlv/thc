EESchema Schematic File Version 2
LIBS:db9_shield
LIBS:74hct04
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
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
LIBS:valves
LIBS:doors
LIBS:thc-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title ""
Date "17 feb 2014"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L DB25 J2
U 1 1 52BF21EC
P 950 2050
F 0 "J2" H 1000 3400 70  0000 C CNN
F 1 "DB25" H 900 700 70  0000 C CNN
F 2 "~" H 950 2050 60  0000 C CNN
F 3 "~" H 950 2050 60  0000 C CNN
	1    950  2050
	-1   0    0    1   
$EndComp
Text Label 1600 1150 0    60   ~ 0
U_THC_OUT1
Text Label 1650 3050 0    60   ~ 0
U_THC_OUT4
Text Label 1650 2850 0    60   ~ 0
U_THC_OUT3
Text Label 1650 2650 0    60   ~ 0
U_THC_OUT2
Text Label 1600 850  0    60   ~ 0
U_THC_INP1
Text Label 1600 950  0    60   ~ 0
U_THC_INP2
$Comp
L ISOL_PWR U5
U 1 1 52BF2979
P 9450 6000
F 0 "U5" H 9650 5700 60  0000 C CNN
F 1 "ISOL_PWR" H 9500 6150 60  0000 C CNN
F 2 "" H 9450 6000 60  0000 C CNN
F 3 "" H 9450 6000 60  0000 C CNN
	1    9450 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 52BF2988
P 8350 6350
F 0 "#PWR011" H 8350 6350 30  0001 C CNN
F 1 "GND" H 8350 6280 30  0001 C CNN
F 2 "" H 8350 6350 60  0000 C CNN
F 3 "" H 8350 6350 60  0000 C CNN
	1    8350 6350
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 52BF299E
P 8650 5450
F 0 "#PWR012" H 8650 5540 20  0001 C CNN
F 1 "+5V" H 8650 5540 30  0000 C CNN
F 2 "" H 8650 5450 60  0000 C CNN
F 3 "" H 8650 5450 60  0000 C CNN
	1    8650 5450
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR013
U 1 1 52BF29B6
P 10250 6350
F 0 "#PWR013" H 10250 6350 40  0001 C CNN
F 1 "GNDA" H 10250 6280 40  0000 C CNN
F 2 "" H 10250 6350 60  0000 C CNN
F 3 "" H 10250 6350 60  0000 C CNN
	1    10250 6350
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR014
U 1 1 52BF29D0
P 10500 5600
F 0 "#PWR014" H 10500 5730 20  0001 C CNN
F 1 "+5VA" H 10500 5700 30  0000 C CNN
F 2 "" H 10500 5600 60  0000 C CNN
F 3 "" H 10500 5600 60  0000 C CNN
	1    10500 5600
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 52BF2ABC
P 10750 6100
F 0 "C7" H 10750 6200 40  0000 L CNN
F 1 "10uF" H 10756 6015 40  0000 L CNN
F 2 "~" H 10788 5950 30  0000 C CNN
F 3 "~" H 10750 6100 60  0000 C CNN
	1    10750 6100
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 52BF2B27
P 8350 5800
F 0 "C6" H 8350 5900 40  0000 L CNN
F 1 "10uF" H 8356 5715 40  0000 L CNN
F 2 "~" H 8388 5650 30  0000 C CNN
F 3 "~" H 8350 5800 60  0000 C CNN
	1    8350 5800
	1    0    0    -1  
$EndComp
$Comp
L CNY74-4 U3
U 1 1 52BF3A48
P 2150 5150
F 0 "U3" H 2150 5650 60  0000 C CNN
F 1 "CNY74-4" H 2550 5750 60  0000 C CNN
F 2 "" H 2150 5150 60  0000 C CNN
F 3 "" H 2150 5150 60  0000 C CNN
	1    2150 5150
	-1   0    0    1   
$EndComp
$Comp
L R R7
U 1 1 52BF3A69
P 4050 4400
F 0 "R7" V 4130 4400 40  0000 C CNN
F 1 "200R" V 4057 4401 40  0000 C CNN
F 2 "~" V 3980 4400 30  0000 C CNN
F 3 "~" H 4050 4400 30  0000 C CNN
	1    4050 4400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR015
U 1 1 52BF3AAE
P 2800 5650
F 0 "#PWR015" H 2800 5650 30  0001 C CNN
F 1 "GND" H 2800 5580 30  0001 C CNN
F 2 "" H 2800 5650 60  0000 C CNN
F 3 "" H 2800 5650 60  0000 C CNN
	1    2800 5650
	1    0    0    -1  
$EndComp
$Comp
L R R8
U 1 1 52BF3AB4
P 4050 4850
F 0 "R8" V 4130 4850 40  0000 C CNN
F 1 "200R" V 4057 4851 40  0000 C CNN
F 2 "~" V 3980 4850 30  0000 C CNN
F 3 "~" H 4050 4850 30  0000 C CNN
	1    4050 4850
	0    -1   -1   0   
$EndComp
$Comp
L R R9
U 1 1 52BF3ABA
P 4050 5000
F 0 "R9" V 4130 5000 40  0000 C CNN
F 1 "200R" V 4057 5001 40  0000 C CNN
F 2 "~" V 3980 5000 30  0000 C CNN
F 3 "~" H 4050 5000 30  0000 C CNN
	1    4050 5000
	0    -1   -1   0   
$EndComp
$Comp
L R R11
U 1 1 52BF3AC0
P 3700 6900
F 0 "R11" V 3780 6900 40  0000 C CNN
F 1 "200R" V 3707 6901 40  0000 C CNN
F 2 "~" V 3630 6900 30  0000 C CNN
F 3 "~" H 3700 6900 30  0000 C CNN
	1    3700 6900
	0    -1   -1   0   
$EndComp
$Comp
L +5VA #PWR016
U 1 1 52BF3DE1
P 1500 4200
F 0 "#PWR016" H 1500 4330 20  0001 C CNN
F 1 "+5VA" H 1500 4300 30  0000 C CNN
F 2 "" H 1500 4200 60  0000 C CNN
F 3 "" H 1500 4200 60  0000 C CNN
	1    1500 4200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 52BF3F30
P 1150 4400
F 0 "R1" V 1230 4400 40  0000 C CNN
F 1 "10K" V 1157 4401 40  0000 C CNN
F 2 "~" V 1080 4400 30  0000 C CNN
F 3 "~" H 1150 4400 30  0000 C CNN
	1    1150 4400
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 52BF3F36
P 1150 4850
F 0 "R2" V 1230 4850 40  0000 C CNN
F 1 "10K" V 1157 4851 40  0000 C CNN
F 2 "~" V 1080 4850 30  0000 C CNN
F 3 "~" H 1150 4850 30  0000 C CNN
	1    1150 4850
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 52BF3F3C
P 1150 5000
F 0 "R4" V 1230 5000 40  0000 C CNN
F 1 "10K" V 1157 5001 40  0000 C CNN
F 2 "~" V 1080 5000 30  0000 C CNN
F 3 "~" H 1150 5000 30  0000 C CNN
	1    1150 5000
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 52BF3F42
P 1150 5450
F 0 "R5" V 1230 5450 40  0000 C CNN
F 1 "10K" V 1157 5451 40  0000 C CNN
F 2 "~" V 1080 5450 30  0000 C CNN
F 3 "~" H 1150 5450 30  0000 C CNN
	1    1150 5450
	0    1    1    0   
$EndComp
$Comp
L GNDA #PWR017
U 1 1 52BF41F6
P 800 5650
F 0 "#PWR017" H 800 5650 40  0001 C CNN
F 1 "GNDA" H 800 5580 40  0000 C CNN
F 2 "" H 800 5650 60  0000 C CNN
F 3 "" H 800 5650 60  0000 C CNN
	1    800  5650
	1    0    0    -1  
$EndComp
Text Label 850  4250 0    60   ~ 0
U_THC_OUT1
Text Label 850  4700 0    60   ~ 0
U_THC_OUT5
Text Label 850  5200 0    60   ~ 0
U_THC_OUT4
Text Label 850  5350 0    60   ~ 0
U_THC_OUT3
$Comp
L 4N25 IC1
U 1 1 52BF50D2
P 2150 6800
F 0 "IC1" H 1936 6979 40  0000 C CNN
F 1 "4N25" H 2330 6615 40  0000 C CNN
F 2 "DIP6" H 1951 6620 29  0000 C CNN
F 3 "~" H 2150 6800 60  0000 C CNN
	1    2150 6800
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR018
U 1 1 52BF50D8
P 2650 7050
F 0 "#PWR018" H 2650 7050 30  0001 C CNN
F 1 "GND" H 2650 6980 30  0001 C CNN
F 2 "" H 2650 7050 60  0000 C CNN
F 3 "" H 2650 7050 60  0000 C CNN
	1    2650 7050
	1    0    0    -1  
$EndComp
$Comp
L +5VA #PWR019
U 1 1 52BF5230
P 1600 6550
F 0 "#PWR019" H 1600 6680 20  0001 C CNN
F 1 "+5VA" H 1600 6650 30  0000 C CNN
F 2 "" H 1600 6550 60  0000 C CNN
F 3 "" H 1600 6550 60  0000 C CNN
	1    1600 6550
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 52BF52A8
P 1250 6700
F 0 "R6" V 1330 6700 40  0000 C CNN
F 1 "10K" V 1257 6701 40  0000 C CNN
F 2 "~" V 1180 6700 30  0000 C CNN
F 3 "~" H 1250 6700 30  0000 C CNN
	1    1250 6700
	0    1    1    0   
$EndComp
$Comp
L GNDA #PWR020
U 1 1 52BF5322
P 1000 6950
F 0 "#PWR020" H 1000 6950 40  0001 C CNN
F 1 "GNDA" H 1000 6880 40  0000 C CNN
F 2 "" H 1000 6950 60  0000 C CNN
F 3 "" H 1000 6950 60  0000 C CNN
	1    1000 6950
	1    0    0    -1  
$EndComp
Text Label 1650 3250 0    60   ~ 0
U_THC_OUT5
Text Label 1600 1050 0    60   ~ 0
U_THC_INP3
Text Label 1600 1250 0    60   ~ 0
U_THC_INP4
$Comp
L +5VA #PWR021
U 1 1 52BF55C5
P 6150 950
F 0 "#PWR021" H 6150 1080 20  0001 C CNN
F 1 "+5VA" H 6150 1050 30  0000 C CNN
F 2 "" H 6150 950 60  0000 C CNN
F 3 "" H 6150 950 60  0000 C CNN
	1    6150 950 
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 52BF5647
P 6900 1250
F 0 "C2" H 6900 1350 40  0000 L CNN
F 1 "1uF" H 6906 1165 40  0000 L CNN
F 2 "~" H 6938 1100 30  0000 C CNN
F 3 "~" H 6900 1250 60  0000 C CNN
	1    6900 1250
	1    0    0    -1  
$EndComp
Text Label 5150 3350 0    60   ~ 0
U_THC_INP1
Text Label 5150 2900 0    60   ~ 0
U_THC_INP2
Text Label 5150 2400 0    60   ~ 0
U_THC_INP3
Text Label 5150 1550 0    60   ~ 0
U_THC_INP4
$Comp
L CNY74-4 U7
U 1 1 52BF5B9E
P 8500 2600
F 0 "U7" H 8500 3100 60  0000 C CNN
F 1 "CNY74-4" H 8900 3200 60  0000 C CNN
F 2 "" H 8500 2600 60  0000 C CNN
F 3 "" H 8500 2600 60  0000 C CNN
	1    8500 2600
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 52BF5BA4
P 7700 1550
F 0 "R14" V 7780 1550 40  0000 C CNN
F 1 "200R" V 7707 1551 40  0000 C CNN
F 2 "~" V 7630 1550 30  0000 C CNN
F 3 "~" H 7700 1550 30  0000 C CNN
	1    7700 1550
	0    -1   -1   0   
$EndComp
$Comp
L R R15
U 1 1 52BF5CCF
P 7150 2400
F 0 "R15" V 7230 2400 40  0000 C CNN
F 1 "200R" V 7157 2401 40  0000 C CNN
F 2 "~" V 7080 2400 30  0000 C CNN
F 3 "~" H 7150 2400 30  0000 C CNN
	1    7150 2400
	0    -1   -1   0   
$EndComp
$Comp
L R R13
U 1 1 52BF5E01
P 7150 2900
F 0 "R13" V 7230 2900 40  0000 C CNN
F 1 "200R" V 7157 2901 40  0000 C CNN
F 2 "~" V 7080 2900 30  0000 C CNN
F 3 "~" H 7150 2900 30  0000 C CNN
	1    7150 2900
	0    -1   -1   0   
$EndComp
$Comp
L R R12
U 1 1 52BF5F3B
P 7050 3350
F 0 "R12" V 7130 3350 40  0000 C CNN
F 1 "200R" V 7057 3351 40  0000 C CNN
F 2 "~" V 6980 3350 30  0000 C CNN
F 3 "~" H 7050 3350 30  0000 C CNN
	1    7050 3350
	0    -1   -1   0   
$EndComp
$Comp
L GNDA #PWR022
U 1 1 52BF607D
P 7800 3600
F 0 "#PWR022" H 7800 3600 40  0001 C CNN
F 1 "GNDA" H 7800 3530 40  0000 C CNN
F 2 "" H 7800 3600 60  0000 C CNN
F 3 "" H 7800 3600 60  0000 C CNN
	1    7800 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1150 2400 1150
Wire Wire Line
	1400 3050 2450 3050
Wire Wire Line
	1400 2850 2450 2850
Wire Wire Line
	1400 2650 2450 2650
Wire Wire Line
	1400 850  2400 850 
Wire Wire Line
	1400 950  2400 950 
Wire Wire Line
	8850 6000 8350 6000
Wire Wire Line
	8350 6000 8350 6350
Wire Wire Line
	8650 5450 8650 6150
Wire Wire Line
	8650 6150 8850 6150
Wire Wire Line
	10250 6000 10250 6350
Wire Wire Line
	10250 6000 10100 6000
Wire Wire Line
	10500 6150 10100 6150
Wire Wire Line
	10500 5600 10500 6150
Wire Wire Line
	10750 5900 10500 5900
Connection ~ 10500 5900
Wire Wire Line
	10750 6300 10250 6300
Connection ~ 10250 6300
Wire Wire Line
	8350 5600 8650 5600
Connection ~ 8650 5600
Wire Wire Line
	2700 4400 3800 4400
Wire Wire Line
	2700 4850 3800 4850
Wire Wire Line
	2700 5000 3800 5000
Wire Wire Line
	2700 5450 3800 5450
Wire Wire Line
	2700 4550 2800 4550
Wire Wire Line
	2800 4550 2800 5650
Wire Wire Line
	2700 4700 2800 4700
Connection ~ 2800 4700
Wire Wire Line
	2700 5150 2800 5150
Connection ~ 2800 5150
Wire Wire Line
	2700 5300 2800 5300
Connection ~ 2800 5300
Wire Wire Line
	1400 4400 1600 4400
Wire Wire Line
	1400 4850 1600 4850
Wire Wire Line
	1400 5000 1600 5000
Wire Wire Line
	1400 5450 1600 5450
Wire Wire Line
	1500 5300 1600 5300
Wire Wire Line
	1500 4200 1500 5300
Wire Wire Line
	1600 4550 1500 4550
Connection ~ 1500 4550
Wire Wire Line
	1600 4700 1500 4700
Connection ~ 1500 4700
Wire Wire Line
	1600 5150 1500 5150
Connection ~ 1500 5150
Wire Wire Line
	900  4400 800  4400
Wire Wire Line
	800  4400 800  5650
Wire Wire Line
	900  4850 800  4850
Connection ~ 800  4850
Wire Wire Line
	900  5000 800  5000
Connection ~ 800  5000
Wire Wire Line
	900  5450 800  5450
Connection ~ 800  5450
Wire Wire Line
	1450 4400 1450 4250
Wire Wire Line
	1450 4250 800  4250
Connection ~ 1450 4400
Wire Wire Line
	1450 4850 1450 4700
Wire Wire Line
	1450 4700 850  4700
Connection ~ 1450 4850
Wire Wire Line
	1450 5000 1450 5200
Wire Wire Line
	1450 5200 850  5200
Connection ~ 1450 5000
Wire Wire Line
	1450 5450 1450 5350
Wire Wire Line
	1450 5350 850  5350
Connection ~ 1450 5450
Wire Wire Line
	2500 6700 2650 6700
Wire Wire Line
	2650 6700 2650 7050
Wire Wire Line
	2500 6900 3450 6900
Wire Wire Line
	1800 6800 1600 6800
Wire Wire Line
	1600 6800 1600 6550
Wire Wire Line
	1500 6700 1800 6700
Wire Wire Line
	1000 6700 1000 6950
Wire Wire Line
	1550 6700 1550 6600
Wire Wire Line
	1550 6600 900  6600
Connection ~ 1550 6700
Wire Wire Line
	1400 3250 2450 3250
Wire Wire Line
	1400 1050 2400 1050
Wire Wire Line
	1400 1250 2400 1250
Wire Wire Line
	5100 1550 5750 1550
Wire Wire Line
	5100 2400 5750 2400
Wire Wire Line
	5100 2900 5750 2900
Wire Wire Line
	5100 3350 5750 3350
Wire Wire Line
	7950 1550 7950 2300
Wire Wire Line
	7400 2400 7400 2400
Wire Wire Line
	7400 2400 7400 2750
Wire Wire Line
	7400 2750 7950 2750
Wire Wire Line
	7400 2900 7950 2900
Wire Wire Line
	7300 3350 7950 3350
Wire Wire Line
	7950 2450 7800 2450
Wire Wire Line
	7950 3050 7800 3050
Connection ~ 7800 3050
$Comp
L R R16
U 1 1 52BF63B7
P 9400 3750
F 0 "R16" V 9480 3750 40  0000 C CNN
F 1 "10K" V 9407 3751 40  0000 C CNN
F 2 "~" V 9330 3750 30  0000 C CNN
F 3 "~" H 9400 3750 30  0000 C CNN
	1    9400 3750
	-1   0    0    1   
$EndComp
$Comp
L R R17
U 1 1 52BF63BD
P 9600 3750
F 0 "R17" V 9680 3750 40  0000 C CNN
F 1 "10K" V 9607 3751 40  0000 C CNN
F 2 "~" V 9530 3750 30  0000 C CNN
F 3 "~" H 9600 3750 30  0000 C CNN
	1    9600 3750
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 52BF63D7
P 9800 3750
F 0 "R18" V 9880 3750 40  0000 C CNN
F 1 "10K" V 9807 3751 40  0000 C CNN
F 2 "~" V 9730 3750 30  0000 C CNN
F 3 "~" H 9800 3750 30  0000 C CNN
	1    9800 3750
	1    0    0    -1  
$EndComp
$Comp
L R R19
U 1 1 52BF63DD
P 10000 3750
F 0 "R19" V 10080 3750 40  0000 C CNN
F 1 "10K" V 10007 3751 40  0000 C CNN
F 2 "~" V 9930 3750 30  0000 C CNN
F 3 "~" H 10000 3750 30  0000 C CNN
	1    10000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 2300 10250 2300
Wire Wire Line
	9050 2750 10250 2750
Wire Wire Line
	9050 2900 10250 2900
Wire Wire Line
	9050 3350 10250 3350
Wire Wire Line
	9050 2450 9150 2450
Wire Wire Line
	9050 3200 9050 3050
Wire Wire Line
	9050 3050 9150 3050
Connection ~ 9150 3050
Wire Wire Line
	9050 2600 9050 2450
Wire Wire Line
	7800 2450 7800 3600
Wire Wire Line
	7950 3200 7950 3050
Wire Wire Line
	7950 2600 7950 2450
$Comp
L R R10
U 1 1 52BF6D8A
P 4050 5450
F 0 "R10" V 4130 5450 40  0000 C CNN
F 1 "200R" V 4057 5451 40  0000 C CNN
F 2 "~" V 3980 5450 30  0000 C CNN
F 3 "~" H 4050 5450 30  0000 C CNN
	1    4050 5450
	0    -1   -1   0   
$EndComp
Text Label 900  6600 0    60   ~ 0
U_THC_OUT2
$Comp
L ZENER D6
U 1 1 52BFD8F2
P 2950 7150
F 0 "D6" H 2950 7250 50  0000 C CNN
F 1 "5v1 ZENER" H 2950 7050 40  0000 C CNN
F 2 "~" H 2950 7150 60  0000 C CNN
F 3 "~" H 2950 7150 60  0000 C CNN
	1    2950 7150
	0    -1   -1   0   
$EndComp
$Comp
L ZENER D5
U 1 1 52BFD8FF
P 2950 6000
F 0 "D5" H 2950 6100 50  0000 C CNN
F 1 "5v1 ZENER" H 3100 5900 40  0000 C CNN
F 2 "~" H 2950 6000 60  0000 C CNN
F 3 "~" H 2950 6000 60  0000 C CNN
	1    2950 6000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR023
U 1 1 52BFD90F
P 2950 7400
F 0 "#PWR023" H 2950 7400 30  0001 C CNN
F 1 "GND" H 2950 7330 30  0001 C CNN
F 2 "" H 2950 7400 60  0000 C CNN
F 3 "" H 2950 7400 60  0000 C CNN
	1    2950 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 7400 2950 7350
Wire Wire Line
	2950 6950 2950 6900
Connection ~ 2950 6900
$Comp
L ZENER D7
U 1 1 52BFDA56
P 3150 6150
F 0 "D7" H 3150 6250 50  0000 C CNN
F 1 "5v1 ZENER" H 3000 6050 40  0000 C CNN
F 2 "~" H 3150 6150 60  0000 C CNN
F 3 "~" H 3150 6150 60  0000 C CNN
	1    3150 6150
	0    -1   -1   0   
$EndComp
$Comp
L ZENER D8
U 1 1 52BFDA5C
P 3350 6000
F 0 "D8" H 3350 6100 50  0000 C CNN
F 1 "5v1 ZENER" H 3450 5900 40  0000 C CNN
F 2 "~" H 3350 6000 60  0000 C CNN
F 3 "~" H 3350 6000 60  0000 C CNN
	1    3350 6000
	0    -1   -1   0   
$EndComp
$Comp
L ZENER D9
U 1 1 52BFDA62
P 3500 6200
F 0 "D9" H 3500 6300 50  0000 C CNN
F 1 "5v1 ZENER" H 3500 6100 40  0000 C CNN
F 2 "~" H 3500 6200 60  0000 C CNN
F 3 "~" H 3500 6200 60  0000 C CNN
	1    3500 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 5800 2950 5450
Connection ~ 2950 5450
Wire Wire Line
	3150 5950 3150 5000
Connection ~ 3150 5000
Wire Wire Line
	3350 5800 3350 4850
Connection ~ 3350 4850
Wire Wire Line
	3500 6000 3500 4400
Connection ~ 3500 4400
$Comp
L GND #PWR024
U 1 1 52BFDCDA
P 3200 6650
F 0 "#PWR024" H 3200 6650 30  0001 C CNN
F 1 "GND" H 3200 6580 30  0001 C CNN
F 2 "" H 3200 6650 60  0000 C CNN
F 3 "" H 3200 6650 60  0000 C CNN
	1    3200 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 6200 2950 6550
Wire Wire Line
	2950 6550 3500 6550
Wire Wire Line
	3200 6550 3200 6650
Wire Wire Line
	3150 6350 3150 6550
Connection ~ 3150 6550
Wire Wire Line
	3350 6550 3350 6200
Connection ~ 3200 6550
Wire Wire Line
	3500 6550 3500 6400
Connection ~ 3350 6550
Connection ~ 9400 2300
Connection ~ 3950 6900
Connection ~ 3450 6900
Text GLabel 4300 4400 2    60   Input ~ 0
I_THC_OUT1
Text GLabel 4300 4850 2    60   Input ~ 0
I_THC_OUT5
Text GLabel 4300 5000 2    60   Input ~ 0
I_THC_OUT4
Text GLabel 4300 5450 2    60   Input ~ 0
I_THC_OUT3
Text GLabel 3950 6900 2    60   Input ~ 0
I_THC_OUT2
Text GLabel 10250 2300 2    60   Input ~ 0
I_THC_INP4
Text GLabel 10250 2750 2    60   Input ~ 0
I_THC_INP3
Text GLabel 10250 2900 2    60   Input ~ 0
I_THC_INP2
Text GLabel 10250 3350 2    60   Input ~ 0
I_THC_INP1
$Comp
L 74HC04 U6
U 1 1 52C96612
P 6200 1550
F 0 "U6" H 6350 1650 40  0000 C CNN
F 1 "74HC04" H 6400 1450 40  0000 C CNN
F 2 "~" H 6200 1550 60  0000 C CNN
F 3 "~" H 6200 1550 60  0000 C CNN
	1    6200 1550
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U6
U 2 1 52C9661F
P 6200 2400
F 0 "U6" H 6350 2500 40  0000 C CNN
F 1 "74HC04" H 6400 2300 40  0000 C CNN
F 2 "~" H 6200 2400 60  0000 C CNN
F 3 "~" H 6200 2400 60  0000 C CNN
	2    6200 2400
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U6
U 5 1 52C9662A
P 6200 2900
F 0 "U6" H 6350 3000 40  0000 C CNN
F 1 "74HC04" H 6400 2800 40  0000 C CNN
F 2 "~" H 6200 2900 60  0000 C CNN
F 3 "~" H 6200 2900 60  0000 C CNN
	5    6200 2900
	1    0    0    -1  
$EndComp
$Comp
L 74HC04 U6
U 6 1 52C96635
P 6200 3350
F 0 "U6" H 6350 3450 40  0000 C CNN
F 1 "74HC04" H 6400 3250 40  0000 C CNN
F 2 "~" H 6200 3350 60  0000 C CNN
F 3 "~" H 6200 3350 60  0000 C CNN
	6    6200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 950  6150 1450
Wire Wire Line
	6150 1650 6150 1950
$Comp
L GNDA #PWR025
U 1 1 52C96800
P 6150 1950
F 0 "#PWR025" H 6150 1950 40  0001 C CNN
F 1 "GNDA" H 6150 1880 40  0000 C CNN
F 2 "" H 6150 1950 60  0000 C CNN
F 3 "" H 6150 1950 60  0000 C CNN
	1    6150 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1050 6150 1050
Connection ~ 6150 1050
Wire Wire Line
	6900 1450 6900 1900
Wire Wire Line
	6900 1900 6150 1900
Connection ~ 6150 1900
Wire Wire Line
	7450 1550 6650 1550
Wire Wire Line
	6900 2400 6650 2400
Wire Wire Line
	6900 2900 6650 2900
Wire Wire Line
	6800 3350 6650 3350
$Comp
L GNDA #PWR026
U 1 1 52C97695
P 2650 3450
F 0 "#PWR026" H 2650 3450 40  0001 C CNN
F 1 "GNDA" H 2650 3380 40  0000 C CNN
F 2 "" H 2650 3450 60  0000 C CNN
F 3 "" H 2650 3450 60  0000 C CNN
	1    2650 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1750 2650 1750
Wire Wire Line
	2650 1750 2650 3450
Wire Wire Line
	1400 1950 2650 1950
Connection ~ 2650 1950
Wire Wire Line
	1400 2150 2650 2150
Connection ~ 2650 2150
Wire Wire Line
	1400 2350 2650 2350
Connection ~ 2650 2350
Wire Wire Line
	1400 2550 2650 2550
Connection ~ 2650 2550
Wire Wire Line
	1400 2750 2650 2750
Connection ~ 2650 2750
Wire Wire Line
	1400 2950 2650 2950
Connection ~ 2650 2950
Wire Wire Line
	1400 3150 2650 3150
Connection ~ 2650 3150
Connection ~ 10500 5600
NoConn ~ 1400 1350
NoConn ~ 1400 1450
NoConn ~ 1400 1550
NoConn ~ 1400 1650
NoConn ~ 1400 1850
NoConn ~ 1400 2050
NoConn ~ 1400 2250
NoConn ~ 1400 2450
$Comp
L +5V #PWR027
U 1 1 52D92B24
P 9150 1750
F 0 "#PWR027" H 9150 1840 20  0001 C CNN
F 1 "+5V" H 9150 1840 30  0000 C CNN
F 2 "" H 9150 1750 60  0000 C CNN
F 3 "" H 9150 1750 60  0000 C CNN
	1    9150 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3050 9150 1750
Connection ~ 9150 2450
Wire Wire Line
	9400 3500 9400 2300
Wire Wire Line
	9600 3500 9600 2750
Connection ~ 9600 2750
Wire Wire Line
	9800 3500 9800 2900
Connection ~ 9800 2900
Wire Wire Line
	10000 3500 10000 3350
Connection ~ 10000 3350
Wire Wire Line
	9400 4000 10000 4000
Connection ~ 9800 4000
Connection ~ 9600 4000
Wire Wire Line
	9700 4000 9700 4600
Connection ~ 9700 4000
$Comp
L GND #PWR028
U 1 1 52D933CD
P 9700 4600
F 0 "#PWR028" H 9700 4600 30  0001 C CNN
F 1 "GND" H 9700 4530 30  0001 C CNN
F 2 "" H 9700 4600 60  0000 C CNN
F 3 "" H 9700 4600 60  0000 C CNN
	1    9700 4600
	1    0    0    -1  
$EndComp
Wire Notes Line
	7900 5150 7900 6650
Wire Notes Line
	7900 6650 10950 6650
Wire Notes Line
	10950 6650 10950 5150
Wire Notes Line
	10950 5150 7900 5150
Text Notes 7950 6600 0    60   ~ 0
Isolated power supply for PC side opto-couplers
Wire Notes Line
	700  3950 5100 3950
Wire Notes Line
	5100 3950 5100 7600
Wire Notes Line
	5100 7600 700  7600
Wire Notes Line
	700  7600 700  3950
Text Notes 3750 7550 0    60   ~ 0
PC inputs, Atmega outputs
Wire Notes Line
	5050 700  5050 3850
Wire Notes Line
	5050 3850 8750 3850
Wire Notes Line
	8750 3850 8750 4900
Wire Notes Line
	8750 4900 10950 4900
Wire Notes Line
	10950 4900 10950 700 
Wire Notes Line
	10950 700  5050 700 
Text Notes 9100 950  0    60   ~ 0
PC outputs are buffered, and \nthen drive optocoupler diodes.
$EndSCHEMATC
