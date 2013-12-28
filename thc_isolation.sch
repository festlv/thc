EESchema Schematic File Version 2
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
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date "28 dec 2013"
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
P 1950 3150
F 0 "J2" H 2000 4500 70  0000 C CNN
F 1 "DB25" H 1900 1800 70  0000 C CNN
F 2 "~" H 1950 3150 60  0000 C CNN
F 3 "~" H 1950 3150 60  0000 C CNN
	1    1950 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 2250 3400 2250
Text Label 2600 2250 0    60   ~ 0
U_THC_ON
Wire Wire Line
	2400 4150 3450 4150
Text Label 2650 4150 0    60   ~ 0
U_THC_UP
Wire Wire Line
	2400 3950 3450 3950
Text Label 2650 3950 0    60   ~ 0
U_THC_DOWN
Wire Wire Line
	2400 3750 3450 3750
Text Label 2650 3750 0    60   ~ 0
U_THC_ESTOP
Wire Wire Line
	2400 1950 3400 1950
Text Label 2600 1950 0    60   ~ 0
U_THC_INP1
Wire Wire Line
	2400 2050 3400 2050
Text Label 2600 2050 0    60   ~ 0
U_THC_INP2
$Comp
L LM358 U3
U 1 1 52BF2825
P 4900 1150
F 0 "U3" H 4850 1350 60  0000 L CNN
F 1 "LM358" H 4850 900 60  0000 L CNN
F 2 "" H 4900 1150 60  0000 C CNN
F 3 "" H 4900 1150 60  0000 C CNN
	1    4900 1150
	1    0    0    -1  
$EndComp
$Comp
L LM358 U3
U 2 1 52BF2832
P 6500 1150
F 0 "U3" H 6450 1350 60  0000 L CNN
F 1 "LM358" H 6450 900 60  0000 L CNN
F 2 "" H 6500 1150 60  0000 C CNN
F 3 "" H 6500 1150 60  0000 C CNN
	2    6500 1150
	1    0    0    -1  
$EndComp
$Comp
L ISOL_PWR U5
U 1 1 52BF2979
P 9650 1150
F 0 "U5" H 9850 850 60  0000 C CNN
F 1 "ISOL_PWR" H 9700 1300 60  0000 C CNN
F 2 "" H 9650 1150 60  0000 C CNN
F 3 "" H 9650 1150 60  0000 C CNN
	1    9650 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR18
U 1 1 52BF2988
P 8550 1500
F 0 "#PWR18" H 8550 1500 30  0001 C CNN
F 1 "GND" H 8550 1430 30  0001 C CNN
F 2 "" H 8550 1500 60  0000 C CNN
F 3 "" H 8550 1500 60  0000 C CNN
	1    8550 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 1150 8550 1150
Wire Wire Line
	8550 1150 8550 1500
$Comp
L +5V #PWR19
U 1 1 52BF299E
P 8850 600
F 0 "#PWR19" H 8850 690 20  0001 C CNN
F 1 "+5V" H 8850 690 30  0000 C CNN
F 2 "" H 8850 600 60  0000 C CNN
F 3 "" H 8850 600 60  0000 C CNN
	1    8850 600 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 600  8850 1300
Wire Wire Line
	8850 1300 9050 1300
$Comp
L GNDA #PWR20
U 1 1 52BF29B6
P 10450 1500
F 0 "#PWR20" H 10450 1500 40  0001 C CNN
F 1 "GNDA" H 10450 1430 40  0000 C CNN
F 2 "" H 10450 1500 60  0000 C CNN
F 3 "" H 10450 1500 60  0000 C CNN
	1    10450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1500 10450 1150
Wire Wire Line
	10450 1150 10300 1150
$Comp
L +5VA #PWR21
U 1 1 52BF29D0
P 10700 750
F 0 "#PWR21" H 10700 880 20  0001 C CNN
F 1 "+5VA" H 10700 850 30  0000 C CNN
F 2 "" H 10700 750 60  0000 C CNN
F 3 "" H 10700 750 60  0000 C CNN
	1    10700 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1300 10700 1300
Wire Wire Line
	10700 1300 10700 750 
$Comp
L +5VA #PWR16
U 1 1 52BF29EA
P 6400 650
F 0 "#PWR16" H 6400 780 20  0001 C CNN
F 1 "+5VA" H 6400 750 30  0000 C CNN
F 2 "" H 6400 650 60  0000 C CNN
F 3 "" H 6400 650 60  0000 C CNN
	1    6400 650 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 750  6400 650 
$Comp
L GNDA #PWR17
U 1 1 52BF29FF
P 6400 1750
F 0 "#PWR17" H 6400 1750 40  0001 C CNN
F 1 "GNDA" H 6400 1680 40  0000 C CNN
F 2 "" H 6400 1750 60  0000 C CNN
F 3 "" H 6400 1750 60  0000 C CNN
	1    6400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1750 6400 1550
$Comp
L C C2
U 1 1 52BF2A17
P 7450 1000
F 0 "C2" H 7450 1100 40  0000 L CNN
F 1 "1uF" H 7456 915 40  0000 L CNN
F 2 "~" H 7488 850 30  0000 C CNN
F 3 "~" H 7450 1000 60  0000 C CNN
	1    7450 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 750  7450 750 
Wire Wire Line
	7450 750  7450 800 
Wire Wire Line
	7450 1200 7450 1550
Wire Wire Line
	7450 1550 6400 1550
Wire Wire Line
	6000 1050 5550 1050
Text Label 5550 1050 0    60   ~ 0
U_THC_INP2
Wire Wire Line
	6000 1250 6000 1650
Wire Wire Line
	6000 1650 7000 1650
Wire Wire Line
	7000 1150 7000 1750
Wire Wire Line
	4400 1050 3600 1050
Text Label 3650 1050 0    60   ~ 0
U_THC_INP1
Wire Wire Line
	4400 1250 4400 1650
Wire Wire Line
	4400 1650 5400 1650
Wire Wire Line
	5400 1650 5400 1150
$Comp
L C C?
U 1 1 52BF2ABC
P 10950 1250
F 0 "C?" H 10950 1350 40  0000 L CNN
F 1 "10uF" H 10956 1165 40  0000 L CNN
F 2 "~" H 10988 1100 30  0000 C CNN
F 3 "~" H 10950 1250 60  0000 C CNN
	1    10950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 1050 10700 1050
Connection ~ 10700 1050
Wire Wire Line
	10950 1450 10450 1450
Connection ~ 10450 1450
$Comp
L C C?
U 1 1 52BF2B27
P 8550 950
F 0 "C?" H 8550 1050 40  0000 L CNN
F 1 "10uF" H 8556 865 40  0000 L CNN
F 2 "~" H 8588 800 30  0000 C CNN
F 3 "~" H 8550 950 60  0000 C CNN
	1    8550 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 750  8850 750 
Connection ~ 8850 750 
$Comp
L 4N25 IC?
U 1 1 52BF2B7D
P 7900 2000
F 0 "IC?" H 7686 2179 40  0000 C CNN
F 1 "4N25" H 8080 1815 40  0000 C CNN
F 2 "DIP6" H 7701 1820 29  0000 C CNN
F 3 "~" H 7900 2000 60  0000 C CNN
	1    7900 2000
	1    0    0    -1  
$EndComp
$Comp
L 4N25 IC?
U 1 1 52BF2B8A
P 7900 2450
F 0 "IC?" H 7686 2629 40  0000 C CNN
F 1 "4N25" H 8080 2265 40  0000 C CNN
F 2 "DIP6" H 7701 2270 29  0000 C CNN
F 3 "~" H 7900 2450 60  0000 C CNN
	1    7900 2450
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 52BF2BD1
P 7050 1900
F 0 "R?" V 7130 1900 40  0000 C CNN
F 1 "200R" V 7057 1901 40  0000 C CNN
F 2 "~" V 6980 1900 30  0000 C CNN
F 3 "~" H 7050 1900 30  0000 C CNN
	1    7050 1900
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 52BF2BDE
P 7100 2350
F 0 "R?" V 7180 2350 40  0000 C CNN
F 1 "200R" V 7107 2351 40  0000 C CNN
F 2 "~" V 7030 2350 30  0000 C CNN
F 3 "~" H 7100 2350 30  0000 C CNN
	1    7100 2350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7350 2350 7550 2350
Wire Wire Line
	7300 1900 7550 1900
$Comp
L GNDA #PWR?
U 1 1 52BF2C2B
P 7500 2850
F 0 "#PWR?" H 7500 2850 40  0001 C CNN
F 1 "GNDA" H 7500 2780 40  0000 C CNN
F 2 "" H 7500 2850 60  0000 C CNN
F 3 "" H 7500 2850 60  0000 C CNN
	1    7500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2100 7500 2100
Wire Wire Line
	7500 2100 7500 2850
Wire Wire Line
	7550 2550 7500 2550
Connection ~ 7500 2550
Wire Wire Line
	6800 1900 6800 1750
Wire Wire Line
	6800 1750 7000 1750
Connection ~ 7000 1650
Wire Wire Line
	6850 2350 5750 2350
Wire Wire Line
	5750 2350 5750 1150
Wire Wire Line
	5750 1150 5400 1150
$Comp
L R R?
U 1 1 52BF2CD5
P 8750 2100
F 0 "R?" V 8830 2100 40  0000 C CNN
F 1 "1K" V 8757 2101 40  0000 C CNN
F 2 "~" V 8680 2100 30  0000 C CNN
F 3 "~" H 8750 2100 30  0000 C CNN
	1    8750 2100
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 52BF2CEF
P 8700 2550
F 0 "R?" V 8780 2550 40  0000 C CNN
F 1 "1K" V 8707 2551 40  0000 C CNN
F 2 "~" V 8630 2550 30  0000 C CNN
F 3 "~" H 8700 2550 30  0000 C CNN
	1    8700 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 2550 8450 2550
Wire Wire Line
	8250 2100 8500 2100
Wire Wire Line
	9000 2100 9050 2100
Wire Wire Line
	9050 2100 9050 2850
Wire Wire Line
	8950 2550 9050 2550
Connection ~ 9050 2550
$Comp
L GNDA #PWR?
U 1 1 52BF2DBA
P 9050 2850
F 0 "#PWR?" H 9050 2850 40  0001 C CNN
F 1 "GNDA" H 9050 2780 40  0000 C CNN
F 2 "" H 9050 2850 60  0000 C CNN
F 3 "" H 9050 2850 60  0000 C CNN
	1    9050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2450 8350 2450
Wire Wire Line
	8350 2450 8350 1750
Wire Wire Line
	8250 2000 8350 2000
Connection ~ 8350 2000
$Comp
L +5V #PWR?
U 1 1 52BF2EB6
P 8350 1750
F 0 "#PWR?" H 8350 1840 20  0001 C CNN
F 1 "+5V" H 8350 1840 30  0000 C CNN
F 2 "" H 8350 1750 60  0000 C CNN
F 3 "" H 8350 1750 60  0000 C CNN
	1    8350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 2100 8450 1950
Wire Wire Line
	8450 1950 8900 1950
Connection ~ 8450 2100
Text Label 8550 1950 0    60   ~ 0
I_THC_INP2
Wire Wire Line
	8400 2550 8400 2400
Wire Wire Line
	8400 2400 8950 2400
Connection ~ 8400 2550
Text Label 8450 2400 0    60   ~ 0
I_THC_INP1
$Comp
L CNY74-4 U?
U 1 1 52BF3A48
P 7250 4400
F 0 "U?" H 7250 4900 60  0000 C CNN
F 1 "CNY74-4" H 7650 5000 60  0000 C CNN
F 2 "" H 7250 4400 60  0000 C CNN
F 3 "" H 7250 4400 60  0000 C CNN
	1    7250 4400
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 52BF3A69
P 8200 3650
F 0 "R?" V 8280 3650 40  0000 C CNN
F 1 "200R" V 8207 3651 40  0000 C CNN
F 2 "~" V 8130 3650 30  0000 C CNN
F 3 "~" H 8200 3650 30  0000 C CNN
	1    8200 3650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 3650 7950 3650
$Comp
L GND #PWR?
U 1 1 52BF3AAE
P 7900 4900
F 0 "#PWR?" H 7900 4900 30  0001 C CNN
F 1 "GND" H 7900 4830 30  0001 C CNN
F 2 "" H 7900 4900 60  0000 C CNN
F 3 "" H 7900 4900 60  0000 C CNN
	1    7900 4900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 52BF3AB4
P 8200 4100
F 0 "R?" V 8280 4100 40  0000 C CNN
F 1 "200R" V 8207 4101 40  0000 C CNN
F 2 "~" V 8130 4100 30  0000 C CNN
F 3 "~" H 8200 4100 30  0000 C CNN
	1    8200 4100
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 52BF3ABA
P 8200 4250
F 0 "R?" V 8280 4250 40  0000 C CNN
F 1 "200R" V 8207 4251 40  0000 C CNN
F 2 "~" V 8130 4250 30  0000 C CNN
F 3 "~" H 8200 4250 30  0000 C CNN
	1    8200 4250
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 52BF3AC0
P 8200 4700
F 0 "R?" V 8280 4700 40  0000 C CNN
F 1 "200R" V 8207 4701 40  0000 C CNN
F 2 "~" V 8130 4700 30  0000 C CNN
F 3 "~" H 8200 4700 30  0000 C CNN
	1    8200 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 4100 7800 4100
Wire Wire Line
	7950 4250 7800 4250
Wire Wire Line
	7950 4700 7800 4700
Wire Wire Line
	7800 3800 7900 3800
Wire Wire Line
	7900 3800 7900 4900
Wire Wire Line
	7800 3950 7900 3950
Connection ~ 7900 3950
Wire Wire Line
	7800 4400 7900 4400
Connection ~ 7900 4400
Wire Wire Line
	7800 4550 7900 4550
Connection ~ 7900 4550
Wire Wire Line
	8450 3650 8950 3650
Wire Wire Line
	8450 4100 8950 4100
Wire Wire Line
	8450 4250 8950 4250
Wire Wire Line
	8450 4700 8950 4700
$Comp
L +5VA #PWR?
U 1 1 52BF3DE1
P 6600 3450
F 0 "#PWR?" H 6600 3580 20  0001 C CNN
F 1 "+5VA" H 6600 3550 30  0000 C CNN
F 2 "" H 6600 3450 60  0000 C CNN
F 3 "" H 6600 3450 60  0000 C CNN
	1    6600 3450
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 52BF3F30
P 6250 3650
F 0 "R?" V 6330 3650 40  0000 C CNN
F 1 "1K" V 6257 3651 40  0000 C CNN
F 2 "~" V 6180 3650 30  0000 C CNN
F 3 "~" H 6250 3650 30  0000 C CNN
	1    6250 3650
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 52BF3F36
P 6250 4100
F 0 "R?" V 6330 4100 40  0000 C CNN
F 1 "1K" V 6257 4101 40  0000 C CNN
F 2 "~" V 6180 4100 30  0000 C CNN
F 3 "~" H 6250 4100 30  0000 C CNN
	1    6250 4100
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 52BF3F3C
P 6250 4250
F 0 "R?" V 6330 4250 40  0000 C CNN
F 1 "1K" V 6257 4251 40  0000 C CNN
F 2 "~" V 6180 4250 30  0000 C CNN
F 3 "~" H 6250 4250 30  0000 C CNN
	1    6250 4250
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 52BF3F42
P 6250 4700
F 0 "R?" V 6330 4700 40  0000 C CNN
F 1 "1K" V 6257 4701 40  0000 C CNN
F 2 "~" V 6180 4700 30  0000 C CNN
F 3 "~" H 6250 4700 30  0000 C CNN
	1    6250 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 3650 6700 3650
Wire Wire Line
	6500 4100 6700 4100
Wire Wire Line
	6500 4250 6700 4250
Wire Wire Line
	6500 4700 6700 4700
Wire Wire Line
	6600 4550 6700 4550
Wire Wire Line
	6600 3450 6600 4550
Wire Wire Line
	6700 3800 6600 3800
Connection ~ 6600 3800
Wire Wire Line
	6700 3950 6600 3950
Connection ~ 6600 3950
Wire Wire Line
	6700 4400 6600 4400
Connection ~ 6600 4400
$Comp
L GNDA #PWR?
U 1 1 52BF41F6
P 5900 4900
F 0 "#PWR?" H 5900 4900 40  0001 C CNN
F 1 "GNDA" H 5900 4830 40  0000 C CNN
F 2 "" H 5900 4900 60  0000 C CNN
F 3 "" H 5900 4900 60  0000 C CNN
	1    5900 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3650 5900 3650
Wire Wire Line
	5900 3650 5900 4900
Wire Wire Line
	6000 4100 5900 4100
Connection ~ 5900 4100
Wire Wire Line
	6000 4250 5900 4250
Connection ~ 5900 4250
Wire Wire Line
	6000 4700 5900 4700
Connection ~ 5900 4700
$Comp
L CNY74-4 U?
U 1 1 52BF456A
P 7250 6200
F 0 "U?" H 7250 6700 60  0000 C CNN
F 1 "CNY74-4" H 7650 6800 60  0000 C CNN
F 2 "" H 7250 6200 60  0000 C CNN
F 3 "" H 7250 6200 60  0000 C CNN
	1    7250 6200
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 52BF4570
P 8200 5450
F 0 "R?" V 8280 5450 40  0000 C CNN
F 1 "200R" V 8207 5451 40  0000 C CNN
F 2 "~" V 8130 5450 30  0000 C CNN
F 3 "~" H 8200 5450 30  0000 C CNN
	1    8200 5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7800 5450 7950 5450
$Comp
L GND #PWR?
U 1 1 52BF4577
P 7900 6700
F 0 "#PWR?" H 7900 6700 30  0001 C CNN
F 1 "GND" H 7900 6630 30  0001 C CNN
F 2 "" H 7900 6700 60  0000 C CNN
F 3 "" H 7900 6700 60  0000 C CNN
	1    7900 6700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 52BF457D
P 8200 5900
F 0 "R?" V 8280 5900 40  0000 C CNN
F 1 "200R" V 8207 5901 40  0000 C CNN
F 2 "~" V 8130 5900 30  0000 C CNN
F 3 "~" H 8200 5900 30  0000 C CNN
	1    8200 5900
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 52BF4583
P 8200 6050
F 0 "R?" V 8280 6050 40  0000 C CNN
F 1 "200R" V 8207 6051 40  0000 C CNN
F 2 "~" V 8130 6050 30  0000 C CNN
F 3 "~" H 8200 6050 30  0000 C CNN
	1    8200 6050
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 52BF4589
P 8200 6500
F 0 "R?" V 8280 6500 40  0000 C CNN
F 1 "200R" V 8207 6501 40  0000 C CNN
F 2 "~" V 8130 6500 30  0000 C CNN
F 3 "~" H 8200 6500 30  0000 C CNN
	1    8200 6500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7950 5900 7800 5900
Wire Wire Line
	7950 6050 7800 6050
Wire Wire Line
	7950 6500 7800 6500
Wire Wire Line
	7800 5600 7900 5600
Wire Wire Line
	7900 5600 7900 6700
Wire Wire Line
	7800 5750 7900 5750
Connection ~ 7900 5750
Wire Wire Line
	7800 6200 7900 6200
Connection ~ 7900 6200
Wire Wire Line
	7800 6350 7900 6350
Connection ~ 7900 6350
Wire Wire Line
	8450 5450 8950 5450
Wire Wire Line
	8450 5900 8950 5900
Wire Wire Line
	8450 6050 8950 6050
Wire Wire Line
	8450 6500 8950 6500
$Comp
L +5VA #PWR?
U 1 1 52BF459E
P 6600 5250
F 0 "#PWR?" H 6600 5380 20  0001 C CNN
F 1 "+5VA" H 6600 5350 30  0000 C CNN
F 2 "" H 6600 5250 60  0000 C CNN
F 3 "" H 6600 5250 60  0000 C CNN
	1    6600 5250
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 52BF45A4
P 6250 5450
F 0 "R?" V 6330 5450 40  0000 C CNN
F 1 "1K" V 6257 5451 40  0000 C CNN
F 2 "~" V 6180 5450 30  0000 C CNN
F 3 "~" H 6250 5450 30  0000 C CNN
	1    6250 5450
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 52BF45AA
P 6250 5900
F 0 "R?" V 6330 5900 40  0000 C CNN
F 1 "1K" V 6257 5901 40  0000 C CNN
F 2 "~" V 6180 5900 30  0000 C CNN
F 3 "~" H 6250 5900 30  0000 C CNN
	1    6250 5900
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 52BF45B0
P 6250 6050
F 0 "R?" V 6330 6050 40  0000 C CNN
F 1 "1K" V 6257 6051 40  0000 C CNN
F 2 "~" V 6180 6050 30  0000 C CNN
F 3 "~" H 6250 6050 30  0000 C CNN
	1    6250 6050
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 52BF45B6
P 6250 6500
F 0 "R?" V 6330 6500 40  0000 C CNN
F 1 "1K" V 6257 6501 40  0000 C CNN
F 2 "~" V 6180 6500 30  0000 C CNN
F 3 "~" H 6250 6500 30  0000 C CNN
	1    6250 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	6500 5450 6700 5450
Wire Wire Line
	6500 5900 6700 5900
Wire Wire Line
	6500 6050 6700 6050
Wire Wire Line
	6500 6500 6700 6500
Wire Wire Line
	6600 6350 6700 6350
Wire Wire Line
	6600 5250 6600 6350
Wire Wire Line
	6700 5600 6600 5600
Connection ~ 6600 5600
Wire Wire Line
	6700 5750 6600 5750
Connection ~ 6600 5750
Wire Wire Line
	6700 6200 6600 6200
Connection ~ 6600 6200
$Comp
L GNDA #PWR?
U 1 1 52BF45C8
P 5900 6700
F 0 "#PWR?" H 5900 6700 40  0001 C CNN
F 1 "GNDA" H 5900 6630 40  0000 C CNN
F 2 "" H 5900 6700 60  0000 C CNN
F 3 "" H 5900 6700 60  0000 C CNN
	1    5900 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5450 5900 5450
Wire Wire Line
	5900 5450 5900 6700
Wire Wire Line
	6000 5900 5900 5900
Connection ~ 5900 5900
Wire Wire Line
	6000 6050 5900 6050
Connection ~ 5900 6050
Wire Wire Line
	6000 6500 5900 6500
Connection ~ 5900 6500
$EndSCHEMATC