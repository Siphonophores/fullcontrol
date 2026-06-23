From connecting via usb -- jun 22, 2026

Send M503 to dump all firmware settings (shell)
│
│ echo:  G21    ; Units in mm (mm)
│ echo:  M149 C ; Units in Celsius
│
│ echo:Filament settings: Disabled
│ echo:  M200 D1.75
│ echo:  M200 D0
│ echo:Steps per unit:
│ echo: M92 X80.00 Y80.00 Z400.00 E93.00
│ echo:Maximum feedrates (units/s):
│ echo:  M203 X500.00 Y500.00 Z5.00 E25.00
│ echo:Maximum Acceleration (units/s2):
│ echo:  M201 X500.00 Y500.00 Z100.00 E1000.00
│ echo:Acceleration (units/s2): P<print_accel>
│ R<retract_accel> T<travel_accel>
│ echo:  M204 P500.00 R1000.00 T1000.00
│ echo:Advanced: B<min_segment_time_us>
│ S<min_feedrate> T<min_travel_feedrate> X<max_x_jerk>
│  Y<max_y_jerk> Z<max_z_jerk> E<max_e_jerk>
│ echo:  M205 B20000.00 S0.00 T0.00 X10.00 Y10.00
│ Z0.30 E5.00
│ echo:Home offset:
│ echo:  M206 X0.00 Y0.00 Z0.00
│ echo:Material heatup parameters:
│ echo:  M145 S0 H200 B60 F255
│ echo:  M145 S1 H240 B70 F255
│ echo:PID settings:
│ echo:  M301 P28.72 I2.62 D78.81
│ echo:  M304 P462.10 I85.47 D624.59
│ echo:Power-Loss Recovery:
│ echo:  M413 S1
│ ok



┌──────────┬────────────────┬────────────────────────┐
│ Setting  │ Value          │ Notes                  │
├──────────┼────────────────┼────────────────────────┤
│ M92      │ 93 steps/mm    │ Standard Ender 3       │
│ E93.00   │                │ extruder calibration   │
├──────────┼────────────────┼────────────────────────┤
│ M203     │ Z max 5mm/s    │ Z moves very slowly by │
│ Z5.00    │                │ design                 │
├──────────┼────────────────┼────────────────────────┤
│ M204     │ Print accel    │ Fairly conservative    │
│ P500     │ 500mm/s²       │                        │
├──────────┼────────────────┼────────────────────────┤
│ M205 X10 │ XY jerk 10mm/s │ Stock values           │
│ Y10      │                │                        │
├──────────┼────────────────┼────────────────────────┤
│ M301     │ Hotend PID     │ P28.72 I2.62 D78.81    │
│          │ tuned          │                        │
├──────────┼────────────────┼────────────────────────┤
│ M304     │ Bed PID tuned  │ Both look properly     │
│          │                │ calibrated             │
├──────────┼────────────────┼────────────────────────┤
│ M413 S1  │ Power-loss     │ Printer can resume     │
│          │ recovery ON    │ after outage           │
└──────────┴────────────────┴────────────────────────┘


 FIRMWARE_NAME:Marlin Ver 1.0.1 (GitHub) SOURCE_CODE_
│ URL:https://github.com/MarlinFirmware/Marlin
│ PROTOCOL_VERSION:V1.0 MACHINE_TYPE:3D Printer
│ EXTRUDER_COUNT:1
│ UUID:cede2a2f-41a2-4748-9b12-c55c62f367ff
│ Cap:SERIAL_XON_XOFF:0
│ Cap:BINARY_FILE_TRANSFER:0
│ Cap:EEPROM:1
│ Cap:VOLUMETRIC:1
│ Cap:AUTOREPORT_TEMP:1
│ Cap:PROGRESS:0
│ Cap:PRINT_JOB:1
│ Cap:AUTOLEVEL:0
│ Cap:Z_PROBE:0
│ Cap:LEVELING_DATA:0
│ Cap:BUILD_PERCENT:0
│ Cap:SOFTWARE_POWER:0
│ Cap:TOGGLE_LIGHTS:0
│ Cap:CASE_LIGHT_BRIGHTNESS:0
│ Cap:EMERGENCY_PARSER:0
│ Cap:PROMPT_SUPPORT:0
│ Cap:AUTOREPORT_SD_STATUS:0
│ Cap:THERMAL_PROTECTION:1
│ Cap:MOTION_MODES:0
│ Cap:CHAMBER_TEMPERATURE:0
│ ok

┌────────────────────────┬────────┬──────────────────┐
│ Capability             │ Status │ Notes            │
├────────────────────────┼────────┼──────────────────┤
│ FIRMWARE_NAME          │ Marlin │ Old but stable,  │
│                        │ 1.0.1  │ common on stock  │
│                        │        │ Ender 3          │
├────────────────────────┼────────┼──────────────────┤
│ EEPROM:1               │ ✅     │ Settings can be  │
│                        │        │ saved to EEPROM  │
│                        │        │ (M500)           │
├────────────────────────┼────────┼──────────────────┤
│ THERMAL_PROTECTION:1   │ ✅     │ Important safety │
│                        │        │ feature —        │
│                        │        │ heaters          │
│                        │        │ auto-shutoff if  │
│                        │        │ runaway detected │
├────────────────────────┼────────┼──────────────────┤
│ AUTOLEVEL:0            │ —      │ No BLTouch/ABL   │
│                        │        │ configured       │
├────────────────────────┼────────┼──────────────────┤
│ FWRETRACT              │ absent │ Confirms G10 not │
│                        │        │ supported (as we │
│                        │        │ found)           │
├────────────────────────┼────────┼──────────────────┤
│ EMERGENCY_PARSER:0     │ —      │ Emergency stop ( │
│                        │        │ M112) may not    │
│                        │        │ interrupt        │
│                        │        │ mid-move         │
└────────────────────────┴────────┴──────────────────┘


┌──────────────┬─────────────────────────────────────┐
│              │                                     │
├──────────────┼─────────────────────────────────────┤
│ Board        │ Creality Ender 3 v1.x (8-bit,       │
│              │ ATmega1284P)                        │
├──────────────┼─────────────────────────────────────┤
│ USB chip     │ CH340G                              │
├──────────────┼─────────────────────────────────────┤
│ Firmware     │ Marlin 1.0.1                        │
└──────────────┴─────────────────────────────────────┘