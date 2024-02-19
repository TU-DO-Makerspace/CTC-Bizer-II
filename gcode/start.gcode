; =========================================================
; NOTE:
;   This G-Code has been generated for the TU-DO
;   Makerspace CTC-Bizer II. You can obtain the Cura
;   profile by logging into the TU-DO Makerspace's Cura
;   account and restoring the latest configuration
;   back-up. The login credentials for the Cura account
;   can be found in the private "Configs" repository
;   of the TU-DO Makerspace Github organization:
;   
;   https://github.com/TU-DO-Makerspace/Configs
;
; NOTE:
;   Our CTC-Bizer II runs Marlin. To obtain a copy of
;   our Marlin fork for the CTC-Bizer II, refer to the
;   "CTC-Bizer-II" repository in the TU-DO Makerspace
;   GitHub origanization:
;
;   https://github.com/TU-DO-Makerspace/CTC-Bizer-II
;
; For more information, please do not hesitate to contact:
;  - Patrick Pedersen <ctx.xda@gmail.com>
; =========================================================

; =========================================================
; BEGIN OF CUSTOM START G-CODE
; =========================================================

G28             ; Home
G1 Z15.0 F6000  ; Move the platform down 15mm

;Prime the extruder
G0 F3600 X0 Y0  ; Move to X0 Y0
G92 E0          ; Reset extruder origin
G1 F200 E3      ; Slowly extdude 
G92 E0          ; Reset extruder origin

; M107 ; Fans off - TODO: Not recoginzed! Find out why!

; Extrude test line to get rid of drool
G0 F3600 X0 Y0 Z0.3     ; Move to [X0 Y0] Z0.3
G1 X60.0 E9.0 F1000.0   ; Move to X60 and extrude a little
G1 X100.0 E21.5 F1000.0 ; Move to X100 and extrude more

; =========================================================
; END OF CUSTOM START G-CODE
; =========================================================