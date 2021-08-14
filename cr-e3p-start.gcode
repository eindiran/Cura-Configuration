; Creality Ender 3 Pro Custom Start G-code
M117 Resetting extruder...
G92 E0 ; Reset Extruder
G4 P500 ; Dwell for message to be visible

M117 Homing all axes...
G28 ; Home all axes

M117 Heating E to LEVELING_NOZZLE_TEMP for bed leveling
M104 S120
M109 S120

M117 Leveling bed...
G29 ; Auto bed-level (BL-Touch)
M420 S1 ; Reenables bed-leveling (use mesh)
M412 S0 ; Disable filament runout sensing

M117 Heating hotend to {material_print_temperature}
M104 S{material_print_temperature} ; Heat up the hotend
M109 S{material_print_temperature} ; Wait to continue until the hotend is finished heating.

M117 Printing purge lines
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
; First line
G1 X0.1 Y20.0 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
; Second line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20.0 Z0.3 F1500.0 E30 ; Draw the second line
; Third line
G1 X0.7 Y20.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.7 Y200.0 Z0.3 F1500.0 E30 ; Draw the third line
; Fourth line
G1 X1.0 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X1.0 Y20.0 Z0.3 F1500.0 E30 ; Draw the fourth and final line
M117 Purge complete!
G4 P500 ; Dwell for message to be visible

; Get the extruder ready
G92 E0 ; Reset Extruder
G E-3.0 F400.0 ; Retract by 3mm to reduce initial stringing
G4 P500 ; Dwell for message to be visible

; Move to ready position
G1 Z10.0 F3000.0 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5.0 Y20.0 Z10.0 F5000.0 ; Move over to prevent blob squish
M117 Starting print...
