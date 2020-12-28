EESchema Schematic File Version 4
EELAYER 30 0
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
L Device:R R1
U 1 1 5B3E70E8
P 7750 2400
F 0 "R1" V 7543 2400 50  0000 C CNN
F 1 "10k" V 7634 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7680 2400 50  0001 C CNN
F 3 "~" H 7750 2400 50  0001 C CNN
	1    7750 2400
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW2
U 1 1 5B3E7205
P 4050 1200
F 0 "SW2" H 4050 1435 50  0000 C CNN
F 1 "SW_SPST" H 4050 1344 50  0000 C CNN
F 2 "Switches:SWITCH_SPST_SMD_A" H 4050 1200 50  0001 C CNN
F 3 "" H 4050 1200 50  0001 C CNN
	1    4050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1550 7050 2400
$Comp
L Device:Battery_Cell BT1
U 1 1 5B62B32E
P 2750 1250
F 0 "BT1" V 2495 1300 50  0000 C CNN
F 1 "Battery_Cell" V 2586 1300 50  0000 C CNN
F 2 "Battery:BatteryHolder_Keystone_3034_1x20mm_MODIFICADA" V 2750 1310 50  0001 C CNN
F 3 "~" V 2750 1310 50  0001 C CNN
	1    2750 1250
	1    0    0    -1  
$EndComp
NoConn ~ 4250 1300
$Comp
L Switch:SW_Push SW1
U 1 1 5B3E65C9
P 7250 2400
F 0 "SW1" H 7250 2685 50  0000 C CNN
F 1 "SW_Push" H 7250 2594 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_TL3342" H 7250 2600 50  0001 C CNN
F 3 "" H 7250 2600 50  0001 C CNN
	1    7250 2400
	1    0    0    -1  
$EndComp
Connection ~ 7050 2400
$Comp
L power:GND #PWR0102
U 1 1 5B688276
P 8000 2500
F 0 "#PWR0102" H 8000 2250 50  0001 C CNN
F 1 "GND" H 8005 2327 50  0000 C CNN
F 2 "" H 8000 2500 50  0001 C CNN
F 3 "" H 8000 2500 50  0001 C CNN
	1    8000 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2400 8000 2400
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20PU U1
U 1 1 5B3E6F60
P 4350 2650
F 0 "U1" H 4350 3267 50  0000 C CNN
F 1 "ATTINY85-20PU" V 3800 2650 50  0000 C CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 4100 3250 50  0001 L BNN
F 3 "1.31 USD" H 4750 2700 50  0001 L BNN
F 4 "ATTINY85-20PU" H 4700 2550 50  0001 L BNN "Field4"
F 5 "Good" H 4850 2400 50  0001 L BNN "Field5"
F 6 "ATtiny Series 20 MHz 8 KB Flash 512 B SRAM 8-Bit Microcontroller - DIP-8" H 4700 2450 50  0001 L BNN "Field6"
F 7 "Microchip" H 5100 2400 50  0001 L BNN "Field7"
F 8 "DIP-8 Microchip" H 4700 2800 50  0001 L BNN "Field8"
	1    4350 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1750 4350 2050
Wire Wire Line
	8000 2400 8000 2500
Wire Wire Line
	7050 2400 7050 2750
$Comp
L Device:C C1
U 1 1 5CD3BFC7
P 7750 2900
F 0 "C1" V 8050 2900 50  0000 C CNN
F 1 "100nF" V 7950 2900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7788 2750 50  0001 C CNN
F 3 "~" H 7750 2900 50  0001 C CNN
	1    7750 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0101
U 1 1 5CEFCA33
P 2750 1050
F 0 "#PWR0101" H 2750 900 50  0001 C CNN
F 1 "+3V3" H 2800 1250 50  0000 C CNN
F 2 "" H 2750 1050 50  0001 C CNN
F 3 "" H 2750 1050 50  0001 C CNN
	1    2750 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5CEFCB31
P 2750 1350
F 0 "#PWR0103" H 2750 1100 50  0001 C CNN
F 1 "GND" H 2750 1200 50  0000 C CNN
F 2 "" H 2750 1350 50  0001 C CNN
F 3 "" H 2750 1350 50  0001 C CNN
	1    2750 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5CEFD0A5
P 4200 1750
F 0 "C2" V 4450 1750 50  0000 L CNN
F 1 "47uF" V 4350 1750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4238 1600 50  0001 C CNN
F 3 "~" H 4200 1750 50  0001 C CNN
	1    4200 1750
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0106
U 1 1 5CEFD19E
P 3750 1050
F 0 "#PWR0106" H 3750 900 50  0001 C CNN
F 1 "+3V3" H 3800 1250 50  0000 C CNN
F 2 "" H 3750 1050 50  0001 C CNN
F 3 "" H 3750 1050 50  0001 C CNN
	1    3750 1050
	1    0    0    -1  
$EndComp
$Comp
L NOMAS_semaforos:Programador_ISP CON1
U 1 1 5CEFD0EB
P 5850 1100
F 0 "CON1" H 5850 1450 50  0000 C CNN
F 1 "Programador_ISP" H 5850 1350 50  0000 C CNN
F 2 "MisFootprints:ISP_TestPoints" H 5750 1100 50  0001 C CNN
F 3 "~" H 5750 1100 50  0001 C CNN
	1    5850 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5CEFD292
P 6300 1200
F 0 "#PWR0108" H 6300 950 50  0001 C CNN
F 1 "GND" H 6450 1100 50  0000 C CNN
F 2 "" H 6300 1200 50  0001 C CNN
F 3 "" H 6300 1200 50  0001 C CNN
	1    6300 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5CEFD994
P 4350 3250
F 0 "#PWR0109" H 4350 3000 50  0001 C CNN
F 1 "GND" H 4500 3150 50  0000 C CNN
F 2 "" H 4350 3250 50  0001 C CNN
F 3 "" H 4350 3250 50  0001 C CNN
	1    4350 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2400 7500 2400
Wire Wire Line
	7500 2400 7500 1700
Connection ~ 7500 2400
Wire Wire Line
	7500 2400 7600 2400
Text GLabel 5200 2750 2    50   Input ~ 0
PB4
Wire Wire Line
	5200 2750 4950 2750
Wire Wire Line
	4950 2650 5200 2650
Wire Wire Line
	4950 2550 5200 2550
Text GLabel 5200 2650 2    50   Input ~ 0
PB3
Text GLabel 5200 2550 2    50   Input Italic 0
PB2
Text GLabel 5200 2450 2    50   Input Italic 0
PB1
Text GLabel 5200 2350 2    50   Input Italic 0
PB0
Text GLabel 5200 2850 2    50   Input ~ 10
RESET
Wire Wire Line
	4950 2350 5200 2350
Wire Wire Line
	4950 2450 5200 2450
Wire Wire Line
	4950 2850 5200 2850
Text GLabel 5400 1200 0    50   Input ~ 10
RESET
Text GLabel 5400 1100 0    50   Input ~ 0
PB2
Text GLabel 5400 1000 0    50   Input ~ 0
PB1
Text GLabel 6300 1100 2    50   Input ~ 0
PB0
Text GLabel 1650 3850 1    50   Input ~ 0
PB3
Text GLabel 7500 1700 1    50   Input ~ 0
PB4
$Comp
L power:GND #PWR0110
U 1 1 5CF013BF
P 2500 3550
F 0 "#PWR0110" H 2500 3300 50  0001 C CNN
F 1 "GND" H 2505 3377 50  0000 C CNN
F 2 "" H 2500 3550 50  0001 C CNN
F 3 "" H 2500 3550 50  0001 C CNN
	1    2500 3550
	-1   0    0    1   
$EndComp
Connection ~ 4350 1750
Wire Wire Line
	3750 1050 3750 1200
Wire Wire Line
	3750 1200 3850 1200
$Comp
L power:GND #PWR0104
U 1 1 5CF04C73
P 4050 1750
F 0 "#PWR0104" H 4050 1500 50  0001 C CNN
F 1 "GND" H 4050 1600 50  0000 C CNN
F 2 "" H 4050 1750 50  0001 C CNN
F 3 "" H 4050 1750 50  0001 C CNN
	1    4050 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 1100 4350 1100
Wire Wire Line
	4350 1100 4350 1750
Wire Wire Line
	7050 2750 7750 2750
$Comp
L power:GND #PWR0105
U 1 1 5CF0610B
P 7750 3050
F 0 "#PWR0105" H 7750 2800 50  0001 C CNN
F 1 "GND" H 7755 2877 50  0000 C CNN
F 2 "" H 7750 3050 50  0001 C CNN
F 3 "" H 7750 3050 50  0001 C CNN
	1    7750 3050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5D1A4C64
P 6300 1000
F 0 "#PWR0107" H 6300 850 50  0001 C CNN
F 1 "+5V" H 6350 1200 50  0000 C CNN
F 2 "" H 6300 1000 50  0001 C CNN
F 3 "" H 6300 1000 50  0001 C CNN
	1    6300 1000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5D1A5DBD
P 4350 1100
F 0 "#PWR0111" H 4350 950 50  0001 C CNN
F 1 "+5V" H 4400 1300 50  0000 C CNN
F 2 "" H 4350 1100 50  0001 C CNN
F 3 "" H 4350 1100 50  0001 C CNN
	1    4350 1100
	1    0    0    -1  
$EndComp
Connection ~ 4350 1100
$Comp
L MisLibrary:ws2812_2020 L2
U 1 1 5F6D153F
P 3250 4200
F 0 "L2" H 3200 4550 50  0000 C CNN
F 1 "ws2812_2020" H 3200 4450 50  0000 C CNN
F 2 "MisFootprints:ws2812_2020" H 3300 4150 50  0001 C CNN
F 3 "" H 3300 4150 50  0001 C CNN
	1    3250 4200
	1    0    0    -1  
$EndComp
$Comp
L MisLibrary:ws2812_2020 L3
U 1 1 5F6D1A13
P 4200 4200
F 0 "L3" H 4150 4550 50  0000 C CNN
F 1 "ws2812_2020" H 4150 4450 50  0000 C CNN
F 2 "MisFootprints:ws2812_2020" H 4250 4150 50  0001 C CNN
F 3 "" H 4250 4150 50  0001 C CNN
	1    4200 4200
	1    0    0    -1  
$EndComp
$Comp
L MisLibrary:ws2812_2020 L4
U 1 1 5F6D20E0
P 5100 4200
F 0 "L4" H 5050 4550 50  0000 C CNN
F 1 "ws2812_2020" H 5050 4450 50  0000 C CNN
F 2 "MisFootprints:ws2812_2020" H 5150 4150 50  0001 C CNN
F 3 "" H 5150 4150 50  0001 C CNN
	1    5100 4200
	1    0    0    -1  
$EndComp
$Comp
L MisLibrary:ws2812_2020 L5
U 1 1 5F6D23B9
P 6000 4200
F 0 "L5" H 5950 4550 50  0000 C CNN
F 1 "ws2812_2020" H 5950 4450 50  0000 C CNN
F 2 "MisFootprints:ws2812_2020" H 6050 4150 50  0001 C CNN
F 3 "" H 6050 4150 50  0001 C CNN
	1    6000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3850 1650 4150
Wire Wire Line
	3500 4350 3650 4350
Wire Wire Line
	3650 4350 3650 4150
Wire Wire Line
	3650 4150 3800 4150
Wire Wire Line
	4450 4350 4550 4350
Wire Wire Line
	4550 4350 4550 4150
Wire Wire Line
	4550 4150 4700 4150
Wire Wire Line
	5350 4350 5500 4350
Wire Wire Line
	5500 4350 5500 4150
Wire Wire Line
	5500 4150 5600 4150
Wire Wire Line
	2650 4350 2650 4150
Wire Wire Line
	2650 4150 2850 4150
$Comp
L MisLibrary:ws2812_2020 L6
U 1 1 5F6ECF71
P 6900 4200
F 0 "L6" H 6850 4550 50  0000 C CNN
F 1 "ws2812_2020" H 6850 4450 50  0000 C CNN
F 2 "MisFootprints:ws2812_2020" H 6950 4150 50  0001 C CNN
F 3 "" H 6950 4150 50  0001 C CNN
	1    6900 4200
	1    0    0    -1  
$EndComp
$Comp
L MisLibrary:ws2812_2020 L7
U 1 1 5F6ED4AF
P 7850 4200
F 0 "L7" H 7800 4550 50  0000 C CNN
F 1 "ws2812_2020" H 7800 4450 50  0000 C CNN
F 2 "MisFootprints:ws2812_2020" H 7900 4150 50  0001 C CNN
F 3 "" H 7900 4150 50  0001 C CNN
	1    7850 4200
	1    0    0    -1  
$EndComp
$Comp
L MisLibrary:ws2812_2020 L8
U 1 1 5F6ED81D
P 8800 4200
F 0 "L8" H 8750 4550 50  0000 C CNN
F 1 "ws2812_2020" H 8750 4450 50  0000 C CNN
F 2 "MisFootprints:ws2812_2020" H 8850 4150 50  0001 C CNN
F 3 "" H 8850 4150 50  0001 C CNN
	1    8800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4350 6400 4350
Wire Wire Line
	6400 4350 6400 4150
Wire Wire Line
	6400 4150 6500 4150
Wire Wire Line
	7150 4350 7300 4350
Wire Wire Line
	7300 4350 7300 4150
Wire Wire Line
	7300 4150 7450 4150
Wire Wire Line
	8100 4350 8250 4350
Wire Wire Line
	8250 4350 8250 4150
Wire Wire Line
	8250 4150 8400 4150
NoConn ~ 9050 4350
Wire Wire Line
	2500 4350 2650 4350
Wire Wire Line
	1650 4150 1850 4150
$Comp
L MisLibrary:ws2812_2020 L1
U 1 1 5F6D0F34
P 2250 4200
F 0 "L1" H 2200 4550 50  0000 C CNN
F 1 "ws2812_2020" H 2200 4450 50  0000 C CNN
F 2 "MisFootprints:ws2812_2020" H 2300 4150 50  0001 C CNN
F 3 "" H 2300 4150 50  0001 C CNN
	1    2250 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3750 2600 3750
Wire Wire Line
	9050 3750 9050 4150
Wire Wire Line
	8100 4150 8150 4150
Wire Wire Line
	8150 4150 8150 3750
Connection ~ 8150 3750
Wire Wire Line
	8150 3750 9050 3750
Wire Wire Line
	7150 4150 7250 4150
Wire Wire Line
	7250 4150 7250 3750
Connection ~ 7250 3750
Wire Wire Line
	7250 3750 8150 3750
Wire Wire Line
	6250 4150 6350 4150
Wire Wire Line
	6350 4150 6350 3750
Connection ~ 6350 3750
Wire Wire Line
	6350 3750 7250 3750
Wire Wire Line
	5350 4150 5450 4150
Wire Wire Line
	5450 4150 5450 3750
Connection ~ 5450 3750
Wire Wire Line
	5450 3750 6350 3750
Wire Wire Line
	4500 4150 4500 3750
Connection ~ 4500 3750
Wire Wire Line
	4500 3750 5450 3750
Wire Wire Line
	4450 4150 4500 4150
Wire Wire Line
	3600 4150 3600 3750
Connection ~ 3600 3750
Wire Wire Line
	3600 3750 4500 3750
Wire Wire Line
	3500 4150 3600 4150
Wire Wire Line
	2500 4150 2600 4150
Wire Wire Line
	2600 4150 2600 3750
Connection ~ 2600 3750
Wire Wire Line
	2600 3750 3600 3750
Wire Wire Line
	2500 3750 2500 3550
$Comp
L Device:C C3
U 1 1 5F6F0A74
P 1700 4700
F 0 "C3" V 1950 4700 50  0000 L CNN
F 1 "100nF" V 1850 4700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1738 4550 50  0001 C CNN
F 3 "~" H 1700 4700 50  0001 C CNN
	1    1700 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 1750 4750 1750
Text GLabel 4750 1750 2    50   Input Italic 0
VCC
Text GLabel 1400 3850 1    50   Input Italic 0
VCC
Wire Wire Line
	1400 3850 1400 4350
$Comp
L Device:C C4
U 1 1 5F71133D
P 2850 4700
F 0 "C4" V 3100 4700 50  0000 L CNN
F 1 "100nF" V 3000 4700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2888 4550 50  0001 C CNN
F 3 "~" H 2850 4700 50  0001 C CNN
	1    2850 4700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 5F711822
P 3800 4700
F 0 "C5" V 4050 4700 50  0000 L CNN
F 1 "100nF" V 3950 4700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3838 4550 50  0001 C CNN
F 3 "~" H 3800 4700 50  0001 C CNN
	1    3800 4700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 5F711C37
P 4700 4700
F 0 "C6" V 4950 4700 50  0000 L CNN
F 1 "100nF" V 4850 4700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4738 4550 50  0001 C CNN
F 3 "~" H 4700 4700 50  0001 C CNN
	1    4700 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 4850 2850 4850
Connection ~ 2850 4850
Wire Wire Line
	2850 4850 3800 4850
Connection ~ 3800 4850
Wire Wire Line
	3800 4850 4700 4850
Wire Wire Line
	9050 3750 9250 3750
Connection ~ 9050 3750
Text GLabel 7050 1550 1    50   Input Italic 0
VCC
Wire Wire Line
	1400 4350 1700 4350
Wire Wire Line
	1700 4350 1700 4550
Connection ~ 1700 4350
Wire Wire Line
	1700 4350 1850 4350
Wire Wire Line
	8400 4550 8400 4350
Wire Wire Line
	8400 4550 7450 4550
Connection ~ 1700 4550
Connection ~ 2850 4550
Wire Wire Line
	2850 4550 1700 4550
Connection ~ 3800 4550
Wire Wire Line
	3800 4550 2850 4550
Connection ~ 4700 4550
Wire Wire Line
	4700 4550 3800 4550
Connection ~ 5600 4550
Wire Wire Line
	5600 4550 4700 4550
Connection ~ 6500 4550
Wire Wire Line
	6500 4550 5600 4550
Connection ~ 7450 4550
Wire Wire Line
	7450 4550 6500 4550
Wire Wire Line
	2850 4550 2850 4350
Wire Wire Line
	3800 4550 3800 4350
Wire Wire Line
	4700 4550 4700 4350
Wire Wire Line
	5600 4550 5600 4350
Wire Wire Line
	6500 4550 6500 4350
Wire Wire Line
	7450 4550 7450 4350
Wire Wire Line
	9250 3750 9250 4850
Wire Wire Line
	9250 4850 4700 4850
Connection ~ 4700 4850
$EndSCHEMATC