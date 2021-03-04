; =========================================================================================================
;
;  Prepare to load HIPS at 220°C
;
; =========================================================================================================
;
M291 P"Prepare for filament loading. Please wait while the nozzle is being heated up. Press OK to continue or CANCEL to abort." R"Loading HIPS at 220°C" S3;
;
M291 P"Please wait while the nozzle is being heated up" R"Heating: 220°C" T30 ; Display message
;
G91                                             ; relative positioning
G1 Z20 F6000 H2                                 ; lift Z relative to current position
M104 S220	                                    ; Set current tool temperature to filament 220°C
M116        	                                ; Wait for the temperatures to be reached
;
M98 P"0:/macros/03-Filament_Handling/load.g"    ; execute macro to load and purge filament
;
; =========================================================================================================
