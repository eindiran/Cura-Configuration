; Creality Ender 3 Pro Custom end gcode

; Z wipe. Note that this must use relative
; positioning because we don't know how
; tall the print is (or the current z position).
G91 ; Switch to relative positioning
G1 E-2 F2700 ; Retract a bit
G1 E-2 Z0.2 F2400 ; Retract and raise Z
G1 X5 Y5 F3000 ; Wipe out
G1 Z15 ; Raise Z more
G90 ; Switch back to absolute positioning

; Now enter a dwell so the timelapse camera can get a good shot
G1 X{machine_width} ; Move the gantry out of the way
G4 P5000 ; Dwell for 5s

; Move the gantry to the back left now
G1 X0 Y{machine_depth}

M117 Turning off heaters and fans
M106 S0 ; Turn-off fan
M104 S0 ; Turn-off hotend
M140 S0 ; Turn-off bed

M84 X Y E ; Disable all steppers but Z
M117 Print complete!
