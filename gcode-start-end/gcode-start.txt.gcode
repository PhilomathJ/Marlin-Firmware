; Heat bed and hot end simultaneously JSF 2/24/2025
M140 S{material_bed_temperature_layer_0}     ; set bed temperature to e.g. 55 °C and continue
M104 E0 S{material_print_temperature_layer_0}   ; set hot end temperature to e.g. 210 °C and continue
M190 S{material_bed_temperature_layer_0}     ; wait for bed temperature to reach e.g. 55 °C
M109 E0 S{material_print_temperature_layer_0}   ; wait for hot end temperature to reach e.g. 210 °C

; Ender 3 Custom Start G-code
G92 E0 ; Reset Extruder
G28 ; Home all axes
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish