G21 (Units in millimeters)
G90 (Absolute programming)
;G17 (XY plane) G40 (Cancel radius comp.) G49 (Cancel length comp.)
G1 Z2.54 F2540      ; Move to clearance level

G0 X 50.000 Y -50.000
G1 Z0.0000
G1 Z-3.1750 F127
;F400
G1 X 50.000 Y -100.000 F1016
G1 X 100.000 Y -100.000
G1 X 100.000 Y -50.000
G1 X 50.000 Y -100.000

G1 Z2.5400 F2540
G0 X 0.000 Y 0.000
M2 (Program end)