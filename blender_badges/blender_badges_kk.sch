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
L Device:Battery_Cell BT2
U 1 1 5F2468F5
P 4300 3400
F 0 "BT2" H 4450 3500 50  0000 L CNN
F 1 "Battery_Cell" H 4450 3450 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3034_1x20mm_MODIFICADA" V 4300 3460 50  0001 C CNN
F 3 "~" V 4300 3460 50  0001 C CNN
	1    4300 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5F247022
P 4100 3400
F 0 "BT1" H 4250 3500 50  0000 L CNN
F 1 "Battery_Cell" H 4250 3450 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3034_1x20mm_MODIFICADA" V 4100 3460 50  0001 C CNN
F 3 "~" V 4100 3460 50  0001 C CNN
	1    4100 3400
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D1
U 1 1 5F248E38
P 5300 3600
F 0 "D1" H 5650 3650 50  0000 L CNN
F 1 "WS2812B" H 5650 3600 50  0000 L CNN
F 2 "LED_SMD:LED_WS2812B_PLCC4_5.0x5.0mm_P3.2mm_Hands_MODIFICADO" H 5350 3300 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5400 3225 50  0001 L TNN
	1    5300 3600
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_ATtiny:ATtiny85-20SU U1
U 1 1 5F249D1A
P 6350 2800
F 0 "U1" H 5800 2850 50  0000 R CNN
F 1 "ATtiny85-20SU" H 5800 2800 50  0000 R CNN
F 2 "Package_SO:SOIJ-8_5.3x5.3mm_P1.27mm" H 6350 2800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf" H 6350 2800 50  0001 C CNN
	1    6350 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3500 4200 3500
Wire Wire Line
	4100 3200 4200 3200
Wire Wire Line
	4200 3200 4200 2200
Wire Wire Line
	4200 2200 5300 2200
Connection ~ 4200 3200
Wire Wire Line
	4200 3200 4300 3200
Wire Wire Line
	4200 3500 4200 4000
Wire Wire Line
	4200 4000 5300 4000
Wire Wire Line
	6350 4000 6350 3400
Connection ~ 4200 3500
Wire Wire Line
	4200 3500 4300 3500
Wire Wire Line
	5300 3300 5300 2200
Connection ~ 5300 2200
Wire Wire Line
	5300 2200 6350 2200
Wire Wire Line
	5300 3900 5300 4000
Connection ~ 5300 4000
Wire Wire Line
	5300 4000 6350 4000
Wire Wire Line
	5000 3600 5000 2600
Wire Wire Line
	5000 2600 6950 2600
NoConn ~ 5600 3600
$EndSCHEMATC
