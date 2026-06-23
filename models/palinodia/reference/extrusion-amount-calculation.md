---------------------------------------------------------

FullControl Extrusion Calculation

For every move from point A → point B, three values are multiplied together:

 E value = segment_length × bead_area × volume_to_e
               (mm)            (mm²)        (mm/mm³)

---------------------------------------------------------

Step 1 — Segment length

Simple 3D Euclidean distance between the two points:

 length = √((x₂-x₁)² + (y₂-y₁)² + (z₂-z₁)²)

Step 2 — Bead cross-section area

Set via fc.ExtrusionGeometry(width=EW, height=EH). In the ripple notebook:

 EW = nozzle_dia * 2.5   # = 1.0mm
 EH = nozzle_dia * 0.6   # = 0.24mm

FullControl supports four shape models:

┌───────────────┬────────────────┬───────────────────┐
│ area_model    │ Formula        │ Shape             │
├───────────────┼────────────────┼───────────────────┤
│ rectangle     │ width × height │ Simple rectangle  │
├───────────────┼────────────────┼───────────────────┤
│ stadium       │ (w-h)×h +      │ Rectangle +       │
│ (default)     │ π(h/2)²        │ semicircle ends   │
├───────────────┼────────────────┼───────────────────┤
│ circle        │ π(d/2)²        │ Round bead        │
├───────────────┼────────────────┼───────────────────┤
│ manual        │ you set area   │ Custom            │
│               │ directly       │                   │
└───────────────┴────────────────┴───────────────────┘

The stadium is the most physically realistic — it models a bead that's flat on top/bottom with rounded sides.

Step 3 — Volume → filament length

 volume_to_e = 1 / (π × (dia_feed/2)²)
             = 1 / (π × 0.875²)          # for 1.75mm filament
             ≈ 0.4147 mm_filament/mm³

This answers: "how many mm of 1.75mm filament must be fed to deposit this volume?"

---------------------------------------------------------

Putting it together (example)

For a 10mm move with the ripple notebook's settings:

 volume  = 10mm × (1.0 × 0.24 - using stadium ≈ 0.2854 mm²) ≈ 2.854 mm³
 E value = 2.854 mm³ × 0.4147 ≈ 0.1184 mm of filament

Which matches the small per-segment E values (~`E0.12`) we saw in the G-code!