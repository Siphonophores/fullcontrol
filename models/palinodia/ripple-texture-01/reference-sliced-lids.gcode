; Reference for how Cura generates gcode by "regular slicing". Used to see if our custom gcode is missing something, particularly in the starting/ending procedures.

;FLAVOR:Marlin
;TIME:8690
;Filament used: 7.65032m
;Layer height: 0.28
;MINX:83.932
;MINY:83.211
;MINZ:0.28
;MAXX:151.179
;MAXY:151.756
;MAXZ:40.04
;TARGET_MACHINE.NAME:Creality Ender-3
;Generated with Cura_SteamEngine 5.6.0
M140 S50
M105
M190 S50
M104 S200
M105
M109 S200
M82 ;absolute extrusion mode
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
G92 E0
G92 E0
G1 F2700 E-5
;LAYER_COUNT:143
;LAYER:0
M107
G0 F6000 X91.292 Y84.468 Z0.28
;TYPE:SKIRT
G1 F2700 E0
G1 F1200 X92.099 Y83.71 E0.05155
G1 X92.933 Y83.365 E0.09358
G1 X93.809 Y83.211 E0.135
G1 X94.248 Y83.247 E0.15551
G1 X95.098 Y83.445 E0.19615
G1 X149.923 Y115.095 E3.14388
G1 X150.57 Y115.802 E3.18851
G1 X150.779 Y116.12 E3.20623

Rest of print...


G0 F9000 X140.936 Y148.29
G1 F1500 X138.781 Y146.134 E3492.45526
G0 F9000 X138.735 Y146.655
G1 F1500 X140.503 Y148.423 E3492.57169
G0 F9000 X139.885 Y148.37
G1 F1500 X138.689 Y147.175 E3492.65041
G0 F9000 X138.727 Y147.778
G1 F1500 X139.214 Y148.265 E3492.68248
;TIME_ELAPSED:8690.609975
G1 F2700 E3487.68248
M140 S0
M107
G91 ;Relative positioning
G1 E-2 F2700 ;Retract a bit
G1 E-2 Z0.2 F2400 ;Retract and raise Z
G1 X5 Y5 F3000 ;Wipe out
G1 Z10 ;Raise Z more
G90 ;Absolute positioning

G1 X0 Y235 ;Present print
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed

M84 X Y E ;Disable all steppers but Z

M82 ;absolute extrusion mode
M104 S0
;End of Gcode
;SETTING_3 {"global_quality": "[general]\\nversion = 4\\nname = Low Quality #2\\
;SETTING_3 ndefinition = creality_ender3\\n\\n[metadata]\\ntype = quality_change
;SETTING_3 s\\nquality_type = low\\nsetting_version = 22\\n\\n[values]\\nadhesio
;SETTING_3 n_type = brim\\nlayer_height = 0.28\\nsupport_enable = False\\n\\n", 
;SETTING_3 "extruder_quality": ["[general]\\nversion = 4\\nname = Low Quality #2
;SETTING_3 \\ndefinition = creality_ender3\\n\\n[metadata]\\ntype = quality_chan
;SETTING_3 ges\\nquality_type = low\\nsetting_version = 22\\nposition = 0\\n\\n[
;SETTING_3 values]\\nbottom_thickness = 1.28\\nbrim_line_count = 8\\nbrim_width 
;SETTING_3 = 6\\ninfill_sparse_density = 8\\nmaterial_final_print_temperature = 
;SETTING_3 190\\ntop_bottom_thickness = 1\\ntop_layers = 10\\ntop_thickness = 0.
;SETTING_3 8\\nz_seam_type = sharpest_corner\\nz_seam_x = 60\\nz_seam_y = 180\\n
;SETTING_3 \\n"]}
