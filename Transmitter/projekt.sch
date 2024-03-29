EESchema Schematic File Version 4
LIBS:projekt-cache
EELAYER 26 0
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
L power:GND #PWR09
U 1 1 5BD8257A
P 6550 4150
F 0 "#PWR09" H 6550 3900 50  0001 C CNN
F 1 "GND" H 6555 3977 50  0000 C CNN
F 2 "" H 6550 4150 50  0001 C CNN
F 3 "" H 6550 4150 50  0001 C CNN
	1    6550 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 5BD82679
P 4250 1450
F 0 "J1" H 4330 1442 50  0000 L CNN
F 1 "Conn_01x02" H 4330 1351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4250 1450 50  0001 C CNN
F 3 "~" H 4250 1450 50  0001 C CNN
	1    4250 1450
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5BD827D6
P 6750 1300
F 0 "C4" H 6842 1346 50  0000 L CNN
F 1 "100n" H 6842 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6750 1300 50  0001 C CNN
F 3 "~" H 6750 1300 50  0001 C CNN
	1    6750 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR06
U 1 1 5BD8293C
P 4450 1200
F 0 "#PWR06" H 4450 1050 50  0001 C CNN
F 1 "+3.3V" H 4465 1373 50  0000 C CNN
F 2 "" H 4450 1200 50  0001 C CNN
F 3 "" H 4450 1200 50  0001 C CNN
	1    4450 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 5BD829B3
P 6750 1100
F 0 "#PWR03" H 6750 950 50  0001 C CNN
F 1 "+3.3V" H 6765 1273 50  0000 C CNN
F 2 "" H 6750 1100 50  0001 C CNN
F 3 "" H 6750 1100 50  0001 C CNN
	1    6750 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR08
U 1 1 5BD829E2
P 6550 2250
F 0 "#PWR08" H 6550 2100 50  0001 C CNN
F 1 "+3.3V" H 6565 2423 50  0000 C CNN
F 2 "" H 6550 2250 50  0001 C CNN
F 3 "" H 6550 2250 50  0001 C CNN
	1    6550 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5BD82A11
P 6750 1500
F 0 "#PWR04" H 6750 1250 50  0001 C CNN
F 1 "GND" H 6755 1327 50  0000 C CNN
F 2 "" H 6750 1500 50  0001 C CNN
F 3 "" H 6750 1500 50  0001 C CNN
	1    6750 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5BD82A40
P 4450 1600
F 0 "#PWR07" H 4450 1350 50  0001 C CNN
F 1 "GND" H 4455 1427 50  0000 C CNN
F 2 "" H 4450 1600 50  0001 C CNN
F 3 "" H 4450 1600 50  0001 C CNN
	1    4450 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1100 6750 1200
Wire Wire Line
	6750 1400 6750 1500
Wire Wire Line
	4450 1600 4450 1450
Wire Wire Line
	4450 1350 4450 1200
Wire Wire Line
	6550 2350 6550 2250
Wire Wire Line
	7150 2650 7600 2650
Text Label 7600 3350 0    50   ~ 0
czujnik
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J2
U 1 1 5BD82D95
P 4950 4350
F 0 "J2" H 5000 4667 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 5000 4576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 4950 4350 50  0001 C CNN
F 3 "~" H 4950 4350 50  0001 C CNN
	1    4950 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4250 5750 4250
Wire Wire Line
	5250 4350 5750 4350
Wire Wire Line
	4750 4350 4350 4350
Wire Wire Line
	5250 4550 5750 4550
Wire Wire Line
	4750 4550 4350 4550
Wire Wire Line
	4750 4450 4350 4450
Wire Wire Line
	5250 4450 5750 4450
$Comp
L power:GND #PWR05
U 1 1 5BD8343A
P 4150 4300
F 0 "#PWR05" H 4150 4050 50  0001 C CNN
F 1 "GND" H 4155 4127 50  0000 C CNN
F 2 "" H 4150 4300 50  0001 C CNN
F 3 "" H 4150 4300 50  0001 C CNN
	1    4150 4300
	1    0    0    -1  
$EndComp
Text Label 4350 4350 0    50   ~ 0
CE
Text Label 4350 4450 0    50   ~ 0
SCK
Text Label 4350 4550 0    50   ~ 0
MISO
Text Label 5750 4550 0    50   ~ 0
IRQ
Text Label 5750 4450 0    50   ~ 0
MOSI
Text Label 5750 4350 0    50   ~ 0
CSN
Text Label 5750 4250 0    50   ~ 0
VCC_R
Wire Wire Line
	4150 4250 4150 4300
Wire Wire Line
	4150 4250 4750 4250
Wire Wire Line
	7150 3150 7600 3150
Wire Wire Line
	7150 3250 7600 3250
Text Label 7600 3250 0    50   ~ 0
MOSI
Wire Wire Line
	7150 3050 7600 3050
Text Label 7600 3050 0    50   ~ 0
SCK
Text Label 7600 3150 0    50   ~ 0
MISO
$Comp
L MCU_Microchip_ATtiny:ATtiny84A-SSU U1
U 1 1 5BD821A4
P 6550 3250
F 0 "U1" H 6020 3296 50  0000 R CNN
F 1 "ATtiny84A-SSU" H 6020 3205 50  0000 R CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 6550 3250 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/doc8183.pdf" H 6550 3250 50  0001 C CNN
	1    6550 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5BD857BE
P 7500 4850
F 0 "#PWR010" H 7500 4600 50  0001 C CNN
F 1 "GND" H 7505 4677 50  0000 C CNN
F 2 "" H 7500 4850 50  0001 C CNN
F 3 "" H 7500 4850 50  0001 C CNN
	1    7500 4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:AVR-ISP-6 J3
U 1 1 5BD855AF
P 7600 4450
F 0 "J3" H 7320 4546 50  0000 R CNN
F 1 "AVR-ISP-6" H 7320 4455 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" V 7350 4500 50  0001 C CNN
F 3 " ~" H 6325 3900 50  0001 C CNN
	1    7600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4250 8300 4250
Wire Wire Line
	8000 4350 8300 4350
Wire Wire Line
	8000 4550 8300 4550
Wire Wire Line
	8000 4450 8300 4450
Text Label 8300 4250 0    50   ~ 0
MISO
Text Label 8300 4350 0    50   ~ 0
MOSI
Text Label 8300 4450 0    50   ~ 0
SCK
Text Label 8300 4550 0    50   ~ 0
~RESET
Wire Wire Line
	7500 3950 8100 3950
Text Label 8100 3950 0    50   ~ 0
VCC_R
$Comp
L Device:Crystal_Small 8M1
U 1 1 5BD86A33
P 8600 3450
F 0 "8M1" H 8600 3650 50  0000 C CNN
F 1 "Crystal_Small" H 8600 3550 50  0000 C CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 8600 3450 50  0001 C CNN
F 3 "~" H 8600 3450 50  0001 C CNN
	1    8600 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5BD86B0F
P 9000 3200
F 0 "C5" V 9229 3200 50  0000 C CNN
F 1 "22p" V 9138 3200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 3200 50  0001 C CNN
F 3 "~" H 9000 3200 50  0001 C CNN
	1    9000 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5BD86B7B
P 9000 3750
F 0 "C6" V 9229 3750 50  0000 C CNN
F 1 "22p" V 9138 3750 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9000 3750 50  0001 C CNN
F 3 "~" H 9000 3750 50  0001 C CNN
	1    9000 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8600 3350 8600 3200
Wire Wire Line
	8600 3200 8900 3200
Wire Wire Line
	8600 3550 8600 3750
Wire Wire Line
	8600 3750 8900 3750
$Comp
L power:GND #PWR011
U 1 1 5BD887C5
P 9300 3850
F 0 "#PWR011" H 9300 3600 50  0001 C CNN
F 1 "GND" H 9305 3677 50  0000 C CNN
F 2 "" H 9300 3850 50  0001 C CNN
F 3 "" H 9300 3850 50  0001 C CNN
	1    9300 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3200 9300 3200
Wire Wire Line
	9300 3200 9300 3750
Connection ~ 9300 3750
Wire Wire Line
	9300 3750 9300 3850
Wire Wire Line
	9100 3750 9300 3750
Wire Wire Line
	8600 3200 8350 3200
Wire Wire Line
	8350 3200 8350 3550
Connection ~ 8600 3200
Wire Wire Line
	8350 3650 8350 3750
Wire Wire Line
	8350 3750 8600 3750
Connection ~ 8600 3750
Wire Wire Line
	7150 3750 7600 3750
Text Label 7600 3750 0    50   ~ 0
GEN
Wire Wire Line
	7150 3850 7600 3850
Text Label 7600 3850 0    50   ~ 0
~RESET
$Comp
L Device:C_Small C2
U 1 1 5BD8A982
P 5750 1300
F 0 "C2" H 5842 1346 50  0000 L CNN
F 1 "100n" H 5842 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5750 1300 50  0001 C CNN
F 3 "~" H 5750 1300 50  0001 C CNN
	1    5750 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5BD8A98F
P 5750 1500
F 0 "#PWR01" H 5750 1250 50  0001 C CNN
F 1 "GND" H 5755 1327 50  0000 C CNN
F 2 "" H 5750 1500 50  0001 C CNN
F 3 "" H 5750 1500 50  0001 C CNN
	1    5750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1100 5750 1200
Wire Wire Line
	5750 1400 5750 1500
$Comp
L Device:C_Small C3
U 1 1 5BD8B063
P 6250 1300
F 0 "C3" H 6342 1346 50  0000 L CNN
F 1 "100n" H 6342 1255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6250 1300 50  0001 C CNN
F 3 "~" H 6250 1300 50  0001 C CNN
	1    6250 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5BD8B070
P 6250 1500
F 0 "#PWR02" H 6250 1250 50  0001 C CNN
F 1 "GND" H 6255 1327 50  0000 C CNN
F 2 "" H 6250 1500 50  0001 C CNN
F 3 "" H 6250 1500 50  0001 C CNN
	1    6250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1100 6250 1200
Wire Wire Line
	6250 1400 6250 1500
Text Label 5750 1100 0    50   ~ 0
VCC_R
Text Label 6250 1100 0    50   ~ 0
VCC_R
Wire Wire Line
	7150 2850 7650 2850
Text Label 7600 2750 0    50   ~ 0
CSN
Wire Wire Line
	7150 2950 7650 2950
Text Label 7650 2950 0    50   ~ 0
CE
$Comp
L projekt-rescue:DMG2305UX-moja_biblioteka T1
U 1 1 5BD8434F
P 5350 2300
F 0 "T1" V 5565 2250 50  0000 C CNN
F 1 "DMG2305UX" V 5474 2250 50  0000 C CNN
F 2 "SOT23:moj" H 5250 2650 50  0001 C CNN
F 3 "" H 5250 2650 50  0001 C CNN
	1    5350 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 2300 5800 2300
Wire Wire Line
	5200 2300 5100 2300
Text Label 5800 2300 0    50   ~ 0
VCC_R
$Comp
L power:+3.3V #PWR0101
U 1 1 5BD85707
P 4800 2300
F 0 "#PWR0101" H 4800 2150 50  0001 C CNN
F 1 "+3.3V" H 4815 2473 50  0000 C CNN
F 2 "" H 4800 2300 50  0001 C CNN
F 3 "" H 4800 2300 50  0001 C CNN
	1    4800 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5BD862B2
P 5100 2400
F 0 "R3" H 5159 2446 50  0000 L CNN
F 1 "R_Small" H 5159 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5100 2400 50  0001 C CNN
F 3 "~" H 5100 2400 50  0001 C CNN
	1    5100 2400
	1    0    0    -1  
$EndComp
Connection ~ 5100 2300
Wire Wire Line
	5100 2300 4800 2300
$Comp
L Device:R_Small R4
U 1 1 5BD86D99
P 5400 2850
F 0 "R4" H 5459 2896 50  0000 L CNN
F 1 "R_Small" H 5459 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5400 2850 50  0001 C CNN
F 3 "~" H 5400 2850 50  0001 C CNN
	1    5400 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2950 5400 3150
Wire Wire Line
	7150 3350 7600 3350
Text Label 7600 2650 0    50   ~ 0
ZAS_RADIO
Wire Wire Line
	7150 3550 8350 3550
Wire Wire Line
	7150 3650 8350 3650
Wire Wire Line
	5400 2600 5400 2750
Text Label 5400 3150 0    50   ~ 0
ZAS_RADIO
$Comp
L projekt-rescue:DS1092-04-B6P-uchwyt_baterii U2
U 1 1 5BE18BDB
P 4450 3250
F 0 "U2" H 4528 3296 50  0000 L CNN
F 1 "DS1092-04-B6P" H 4528 3205 50  0000 L CNN
F 2 "uchwyt_baterii:DS1092-04-B6P" H 4575 2750 50  0001 C CNN
F 3 "" H 4575 2750 50  0001 C CNN
	1    4450 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2500 5100 2600
Wire Wire Line
	5100 2600 5400 2600
Connection ~ 5400 2600
$Comp
L power:GND #PWR0102
U 1 1 5BE2E3BA
P 4450 3550
F 0 "#PWR0102" H 4450 3300 50  0001 C CNN
F 1 "GND" H 4455 3377 50  0000 C CNN
F 2 "" H 4450 3550 50  0001 C CNN
F 3 "" H 4450 3550 50  0001 C CNN
	1    4450 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0103
U 1 1 5BE2F4B8
P 4450 3100
F 0 "#PWR0103" H 4450 2950 50  0001 C CNN
F 1 "+3.3V" H 4465 3273 50  0000 C CNN
F 2 "" H 4450 3100 50  0001 C CNN
F 3 "" H 4450 3100 50  0001 C CNN
	1    4450 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 5BE30D8F
P 2600 1750
F 0 "J4" H 2520 2067 50  0000 C CNN
F 1 "Conn_01x03" H 2520 1976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 2600 1750 50  0001 C CNN
F 3 "~" H 2600 1750 50  0001 C CNN
	1    2600 1750
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP_Small C1
U 1 1 5BE30EED
P 5250 1300
F 0 "C1" H 5338 1346 50  0000 L CNN
F 1 "100u" H 5338 1255 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3528-21_Kemet-B_Pad1.50x2.35mm_HandSolder" H 5250 1300 50  0001 C CNN
F 3 "~" H 5250 1300 50  0001 C CNN
	1    5250 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5BE31CAA
P 5250 1500
F 0 "#PWR0104" H 5250 1250 50  0001 C CNN
F 1 "GND" H 5255 1327 50  0000 C CNN
F 2 "" H 5250 1500 50  0001 C CNN
F 3 "" H 5250 1500 50  0001 C CNN
	1    5250 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 1500 5250 1400
Wire Wire Line
	5250 1200 5250 1100
Text Label 5250 1100 0    50   ~ 0
VCC_R
Wire Wire Line
	4450 3550 4450 3400
Text Notes 2100 1650 0    50   ~ 0
generator
Text Notes 2250 1900 0    50   ~ 0
gnd
Text Notes 2200 1750 0    50   ~ 0
wyjscie
Text Notes 2000 1450 0    50   ~ 0
pojemnosciowy
Text Notes 1350 1450 0    50   ~ 0
rezystancyjny
Text Notes 1500 1950 0    50   ~ 0
pin H/L
Text Notes 1500 1650 0    50   ~ 0
pin L/H
Text Notes 1550 1800 0    50   ~ 0
wyjscie
Wire Wire Line
	2800 1650 3000 1650
Text Label 3000 1650 0    50   ~ 0
GEN
Wire Wire Line
	7150 2750 7600 2750
Text Label 7650 2850 0    50   ~ 0
pinHL
Text Label 3850 1700 0    50   ~ 0
pinHL
$Comp
L power:GND #PWR0105
U 1 1 5BE39DC3
P 3850 2000
F 0 "#PWR0105" H 3850 1750 50  0001 C CNN
F 1 "GND" H 3855 1827 50  0000 C CNN
F 2 "" H 3850 2000 50  0001 C CNN
F 3 "" H 3850 2000 50  0001 C CNN
	1    3850 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5BE39E1E
P 3600 2000
F 0 "R2" H 3659 2046 50  0000 L CNN
F 1 "0" H 3659 1955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3600 2000 50  0001 C CNN
F 3 "~" H 3600 2000 50  0001 C CNN
	1    3600 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5BE39ECF
P 3600 1700
F 0 "R1" H 3659 1746 50  0000 L CNN
F 1 "0" H 3659 1655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3600 1700 50  0001 C CNN
F 3 "~" H 3600 1700 50  0001 C CNN
	1    3600 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	3700 1700 3850 1700
Wire Wire Line
	3850 2000 3700 2000
Wire Wire Line
	3500 2000 3400 2000
Wire Wire Line
	3400 2000 3400 1850
Wire Wire Line
	3400 1700 3500 1700
Wire Wire Line
	2800 1850 3400 1850
Connection ~ 3400 1850
Wire Wire Line
	3400 1850 3400 1700
$Comp
L Device:C_Small C7
U 1 1 5BEA99A1
P 3300 2650
F 0 "C7" H 3392 2696 50  0000 L CNN
F 1 "22p" H 3392 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3300 2650 50  0001 C CNN
F 3 "~" H 3300 2650 50  0001 C CNN
	1    3300 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5BEA9A41
P 3300 2850
F 0 "#PWR0106" H 3300 2600 50  0001 C CNN
F 1 "GND" H 3305 2677 50  0000 C CNN
F 2 "" H 3300 2850 50  0001 C CNN
F 3 "" H 3300 2850 50  0001 C CNN
	1    3300 2850
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 5BEAB03B
P 3300 2300
F 0 "D1" H 3300 2516 50  0000 C CNN
F 1 "1N4148" H 3300 2425 50  0000 C CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3300 2125 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 3300 2300 50  0001 C CNN
	1    3300 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 2450 3300 2550
Wire Wire Line
	3300 2750 3300 2850
Wire Wire Line
	3300 2150 3300 1750
Wire Wire Line
	2800 1750 3300 1750
Wire Wire Line
	3300 1750 3300 1650
Connection ~ 3300 1750
Text Label 3300 1650 0    50   ~ 0
czujnik
$EndSCHEMATC
