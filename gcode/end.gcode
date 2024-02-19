; =========================================================
; BEGIN OF CUSTOM END G-CODE
; =========================================================

G0 Z150     ; Send Z axis to bottom of machine
M18         ; Disable steppers
M109 S0 T0  ; Cool down the build platform
M104 S0 T0  ; Cool down the Right Extruder
M104 S0 T1  ; Cool down the Left Extruder
G28 X Y     ; Home X and Y
M18         ; Disable steppers

; =========================================================
; END OF CUSTOM END G-CODE
; =========================================================