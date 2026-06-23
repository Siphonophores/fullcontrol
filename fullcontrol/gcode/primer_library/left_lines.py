
from fullcontrol.gcode import Point, Extruder, Printer
from fullcontrol.gcode import ManualGcode


def primer(end_point: Point) -> list:
    'prints two primer lines along the left edge of the bed (X~0, Y20-Y200), matching the Ender 3 Cura start script'
    primer_steps = []
    primer_steps.append(ManualGcode(text=';-----\n; START OF PRIMER PROCEDURE\n;-----'))
    primer_steps.append(Extruder(on=False))
    primer_steps.append(Point(x=0.1, y=20, z=0.3))   # move to start of first line
    primer_steps.append(Extruder(on=True))
    primer_steps.append(Printer(print_speed=1500))
    primer_steps.append(Point(x=0.1, y=200, z=0.3))  # first line: front to back
    primer_steps.append(Extruder(on=False))
    primer_steps.append(Point(x=0.4, y=200, z=0.3))  # side-step
    primer_steps.append(Extruder(on=True))
    primer_steps.append(Point(x=0.4, y=20, z=0.3))   # second line: back to front
    primer_steps.append(Extruder(on=False))
    primer_steps.append(Point(x=5, y=20, z=0.3))     # move away to prevent blob
    primer_steps.append(ManualGcode(text='G1 E-2 F2700 ; retract before travel to suppress ooze'))
    primer_steps.append(Point(x=end_point.x, y=end_point.y, z=end_point.z))  # travel to first print point
    primer_steps.append(ManualGcode(text='G1 E2 F2700 ; unretract'))
    primer_steps.append(Extruder(on=True))
    primer_steps.append(ManualGcode(text=';-----\n; END OF PRIMER PROCEDURE\n;-----\n'))
    return primer_steps
