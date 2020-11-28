; Configuration file for factory testing Duet Ethernet and Wifi with V2.05.1 firmware

*******************************************************************************************************************
FOR TESTING ONLY! USE https://configurator.reprapfirmware.org/ to generate configuration files for your printer!
*******************************************************************************************************************


; Communication and general
M111 S0                         ; Debug off
M550 PDuetTest					; Machine name and Netbios name (can be anything you like)
M551 Preprap                   	; Machine password (used for FTP)

*** Ethernet networking: The following lines are used for factory testing - PLEASE REMOVE THEM

M552 P192.168.1.34				; IP address
M554 P192.168.1.255				; Gateway
M553 P255.255.255.0				; Netmask

;*** End of factory test lines to be removed

;*** Networking
M552 S1					; Turn network on

M555 P2					; Set output to look like Marlin
G21						; Work in millimetres
G90						; Send absolute coordinates...
M83						; ...but relative extruder moves

; Axis and motor configuration
M569 P0 S1
M569 P1 S1
M569 P2 S1
M569 P3 S1
M569 P4 S1
M574 X2 Y2 Z2 S1

M665 R105.6 L215.0 B85 H250
M666 X0 Y0 Z0
M350 X16 Y16 Z16 E16:16 I1
M92 X80 Y80 Z80
M906 X1000 Y1000 Z1000 E800 I60
M201 X1000 Y1000 Z1000 E1000
M203 X20000 Y20000 Z20000 E3600
M566 X1200 Y1200 Z1200 E1200

; Thermistors

M305 P0 T100000 B3950 R4700 H30 L0
M305 P1 T100000 B3974 R4700 H30 L0
M305 P2 T100000 B3974 R4700 H30 L0

M570 S180

; Adjustments for dummy heaters on test rig

M307 H0 A250 C140 D5.5 B1
M307 H1 A250 C140 D5.5 B0
M307 H2 A250 C140 D5.5 B0

; Disable Fan 1 thermostatic mode

M106 P1 H-1

; Tool definitions
M563 P0 D0 H1
G10 P0 S0 R0
M563 P1 D1 H2
G10 P1 S0 R0
M92 E80:80

; Z probe and compensation definition

M558 P5 F100 T6000 X0 Y0 Z0 H3
G31 P100 X0 Y0 Z-0.25


M208 S1 Z-0.2

T0

;********************************************************************************
; M117 Use https://configurator.reprapfirmware.org/ to set up your printer config
;********************************************************************************
