#import "@preview/cetz:0.4.2"

#set document(title: "Ungheni — Plan constructiv")
#set page(
  paper: "a4",
  margin: (x: 2cm, y: 1.8cm),
  header: context if counter(page).get().first() > 1 {
    set text(8pt, fill: rgb("#666"))
    grid(columns: (1fr, 1fr, 1fr), align: (left, center, right),
      [Ungheni — Plan constructiv],
      [v1 · 2026],
      [Planșa #counter(page).display()]
    )
    line(length: 100%, stroke: 0.4pt + rgb("#aaa"))
  },
)
#set text(font: ("Liberation Sans", "Inter"), size: 9.5pt)
#set par(leading: 0.65em)

#let fill-gold = rgb("#c89826")
#let fill-navy = rgb("#102a5c")

#let dim-table(..rows) = table(
  columns: (1.2fr, 2fr, 1fr),
  stroke: (x, y) => if y == 0 { (bottom: 0.6pt + black) } else { (bottom: 0.2pt + rgb("#ccc")) },
  inset: (x: 0.4em, y: 0.4em),
  align: (left, left, right),
  table.header([*Element*], [*Coordonate (SVG units)*], [*Dim*]),
  ..rows.pos().flatten()
)

// ========== COVER ==========
#align(center + horizon)[
  #v(1cm)
  #text(28pt, tracking: 4pt, weight: "regular")[PLAN CONSTRUCTIV]
  #v(0.5cm)
  #text(40pt, tracking: 12pt, weight: "regular")[UNGHENI]
  #v(0.3cm)
  #text(12pt, fill: rgb("#666"))[Mark comunitar independent · Desen tehnic · v1]
  #v(1cm)
  #image("assets/logo.png", width: 8cm)
  #v(1cm)
  #block(width: 13cm)[
    #set text(10pt, fill: rgb("#555"))
    Acest document conține specificațiile constructive ale mark-ului comunitar independent
    inspirat din motivele heraldice locale ale orașului Ungheni (cheia + apele Prutului).
    *Nu este însemnul oficial al autorității locale.*
    Toate dimensiunile sunt în unități viewBox SVG (1 unit = 1 pt @ 100%).
    Sistemul de coordonate SVG: origine în colțul stânga-sus, X spre dreapta, Y în jos.
    viewBox: `0 0 400 500`.
  ]
  #v(0.7cm)
  #block(inset: 0.7em, fill: rgb("#f4f0e6"), radius: 4pt, width: 13cm)[
    #set text(8.5pt, fill: rgb("#555"))
    © 2026 *Lightcyphers SRL* — reconstrucție și adaptare post-sovietică. Modificări față de
    versiunea sovietică: alfabet latin (UNGHENI vs УНГЕНЫ), dinții cheii orientați spre vest
    (deschiderea spre Europa), paletă plată modernă, tipografie Cinzel inscripțional.
    Motivele heraldice istorice (cheia + apele Prutului) sunt patrimoniu vizual public,
    nerevendicat ca proprietate exclusivă.
  ]
]

#pagebreak()
#counter(page).update(1)

// ========== SHEET 1: OVERVIEW ==========
= Planșa 1 · Privire de ansamblu — desen tehnic cu dimensiuni

#align(center)[
  #cetz.canvas(length: 0.32mm, {
    import cetz.draw: *

    // Helper to flip SVG y → cetz y (y goes UP in cetz)
    let Y(y) = -y

    // ===== LIGHT COORD GRID =====
    for x in range(0, 9) {
      let xv = x * 50
      line((xv, Y(20)), (xv, Y(498)),
           stroke: (paint: rgb("#ddd"), thickness: 0.2pt, dash: "dotted"))
    }
    for yi in range(0, 11) {
      let yv = yi * 50
      line((20, Y(yv)), (380, Y(yv)),
           stroke: (paint: rgb("#ddd"), thickness: 0.2pt, dash: "dotted"))
    }

    // ===== SHIELD OUTLINE =====
    line((20, Y(20)), (380, Y(20)), stroke: 1pt + rgb("#102a5c"))
    line((380, Y(20)), (380, Y(340)), stroke: 1pt + rgb("#102a5c"))
    bezier((380, Y(340)), (215, Y(476)), (380, Y(420)), (365, Y(476)),
           stroke: 1pt + rgb("#102a5c"))
    bezier((215, Y(476)), (200, Y(498)), (210, Y(476)), (200, Y(490)),
           stroke: 1pt + rgb("#102a5c"))
    bezier((200, Y(498)), (185, Y(476)), (200, Y(490)), (190, Y(476)),
           stroke: 1pt + rgb("#102a5c"))
    bezier((185, Y(476)), (20, Y(340)), (35, Y(476)), (20, Y(420)),
           stroke: 1pt + rgb("#102a5c"))
    line((20, Y(340)), (20, Y(20)), stroke: 1pt + rgb("#102a5c"))

    // ===== BANNER =====
    line((20, Y(82)), (380, Y(82)), stroke: 0.7pt + rgb("#102a5c"))
    content((200, Y(53)), text(7pt, weight: "medium")[BANDEROLĂ h=62])

    // ===== BOW =====
    circle((164, Y(190)), radius: 46, fill: none, stroke: 0.8pt + rgb("#c89826"))
    circle((236, Y(190)), radius: 46, fill: none, stroke: 0.8pt + rgb("#c89826"))
    circle((200, Y(190)), radius: 48, fill: none, stroke: 0.8pt + rgb("#c89826"))

    // ===== SHAFT =====
    rect((194, Y(238)), (206, Y(348)), fill: rgb("#c89826"), stroke: none)

    // ===== BIT =====
    rect((175, Y(352)), (225, Y(362)), fill: rgb("#c89826"), stroke: none)
    rect((194, Y(362)), (206, Y(406)), fill: rgb("#c89826"), stroke: none)
    rect((162, Y(374)), (194, Y(384)), fill: rgb("#c89826"), stroke: none)
    rect((158, Y(392)), (194, Y(402)), fill: rgb("#c89826"), stroke: none)

    // ===== WAVY BARS (simplified — straight indicator lines for clarity) =====
    for yv in (278, 308, 338) {
      line((40, Y(yv)), (148, Y(yv)), stroke: (paint: rgb("#c89826"), thickness: 1.2pt))
      line((252, Y(yv)), (360, Y(yv)), stroke: (paint: rgb("#c89826"), thickness: 1.2pt))
    }

    // ===== ORIGIN MARKER (0,0) =====
    circle((0, Y(0)), radius: 2, fill: red, stroke: none)
    content((-15, Y(0) + 15), text(6pt, fill: red)[(0,0)])
    // arrows from origin
    line((0, Y(0)), (25, Y(0)),
         stroke: (paint: red, thickness: 0.5pt), mark: (end: ">"))
    content((30, Y(0)), text(6pt, fill: red)[+X])
    line((0, Y(0)), (0, Y(0) - 25),
         stroke: (paint: red, thickness: 0.5pt), mark: (end: ">"))
    content((0, Y(0) - 35), text(6pt, fill: red)[+Y])

    // ===== DIMENSION LINES =====
    let dim-color = rgb("#a32")

    // Overall WIDTH (top, outside)
    let dyT = Y(-30)
    line((20, dyT), (380, dyT),
         stroke: (paint: dim-color, thickness: 0.5pt),
         mark: (start: ">", end: ">"))
    line((20, Y(20)), (20, dyT + 5),
         stroke: (paint: dim-color, thickness: 0.3pt))
    line((380, Y(20)), (380, dyT + 5),
         stroke: (paint: dim-color, thickness: 0.3pt))
    content((200, dyT + 10), text(7pt, weight: "medium", fill: dim-color)[W = 360])

    // Overall HEIGHT (right, outside)
    let dxR = 410
    line((dxR, Y(20)), (dxR, Y(498)),
         stroke: (paint: dim-color, thickness: 0.5pt),
         mark: (start: ">", end: ">"))
    line((380, Y(20)), (dxR + 5, Y(20)),
         stroke: (paint: dim-color, thickness: 0.3pt))
    line((200, Y(498)), (dxR + 5, Y(498)),
         stroke: (paint: dim-color, thickness: 0.3pt))
    content((dxR + 25, Y(259)), text(7pt, weight: "medium", fill: dim-color)[H = 478])

    // Banner height (left side)
    let dxL = -10
    line((dxL, Y(20)), (dxL, Y(82)),
         stroke: (paint: dim-color, thickness: 0.5pt),
         mark: (start: ">", end: ">"))
    line((20, Y(20)), (dxL - 5, Y(20)),
         stroke: (paint: dim-color, thickness: 0.3pt))
    line((20, Y(82)), (dxL - 5, Y(82)),
         stroke: (paint: dim-color, thickness: 0.3pt))
    content((dxL - 12, Y(51)), text(6pt, fill: dim-color)[62])

    // Bow Y level
    line((dxL, Y(142)), (dxL, Y(238)),
         stroke: (paint: dim-color, thickness: 0.5pt),
         mark: (start: ">", end: ">"))
    line((116, Y(142)), (dxL - 5, Y(142)),
         stroke: (paint: dim-color, thickness: 0.3pt))
    line((116, Y(238)), (dxL - 5, Y(238)),
         stroke: (paint: dim-color, thickness: 0.3pt))
    content((dxL - 16, Y(190)), text(6pt, fill: dim-color)[96])

    // Shaft height
    line((dxR, Y(238)), (dxR, Y(348)),
         stroke: (paint: dim-color, thickness: 0.5pt),
         mark: (start: ">", end: ">"))
    line((206, Y(238)), (dxR + 5, Y(238)),
         stroke: (paint: dim-color, thickness: 0.3pt))
    line((206, Y(348)), (dxR + 5, Y(348)),
         stroke: (paint: dim-color, thickness: 0.3pt))
    content((dxR + 15, Y(293)), text(6pt, fill: dim-color)[110])

    // Bit zone height
    line((dxR, Y(352)), (dxR, Y(406)),
         stroke: (paint: dim-color, thickness: 0.5pt),
         mark: (start: ">", end: ">"))
    line((230, Y(352)), (dxR + 5, Y(352)),
         stroke: (paint: dim-color, thickness: 0.3pt))
    line((194, Y(406)), (dxR + 5, Y(406)),
         stroke: (paint: dim-color, thickness: 0.3pt))
    content((dxR + 15, Y(379)), text(6pt, fill: dim-color)[54])

    // Bars width left (bottom)
    let dyB = Y(395)
    line((40, dyB), (148, dyB),
         stroke: (paint: dim-color, thickness: 0.4pt),
         mark: (start: ">", end: ">"))
    line((40, Y(338)), (40, dyB - 5),
         stroke: (paint: dim-color, thickness: 0.2pt))
    line((148, Y(338)), (148, dyB - 5),
         stroke: (paint: dim-color, thickness: 0.2pt))
    content((94, dyB - 7), text(6pt, fill: dim-color)[bars 108])

    // Center axis (vertical centerline through key)
    line((200, Y(0)), (200, Y(510)),
         stroke: (paint: rgb("#1a5fb4"), thickness: 0.3pt, dash: "densely-dashed"))
    content((215, Y(508)), text(5pt, fill: rgb("#1a5fb4"))[axă x=200])

    // Bow center horizontal axis
    line((100, Y(190)), (300, Y(190)),
         stroke: (paint: rgb("#1a5fb4"), thickness: 0.3pt, dash: "densely-dashed"))
    content((306, Y(190)), text(5pt, fill: rgb("#1a5fb4"))[y=190])
  })
]

#v(0.4cm)

#grid(columns: (1fr, 1fr), gutter: 1em,
  [
    *Dimensiuni globale*
    #table(
      columns: (1fr, 1fr),
      stroke: 0.3pt + rgb("#888"),
      inset: 0.4em,
      [viewBox W], [400],
      [viewBox H], [500],
      [Shield top-left], [(20, 20)],
      [Shield top-right], [(380, 20)],
      [Apex "virgulă"], [(200, 498)],
      [Shield content W], [360],
      [Shield content H], [478],
      [Aspect ratio], [360:478],
    )
    #v(0.6em)
    *Conversie scale*
    #table(
      columns: (1fr, 1fr),
      stroke: 0.3pt + rgb("#888"),
      inset: 0.4em,
      [Logo size], [Scale],
      [60 mm], [0.15 mm/unit],
      [200 px @ 96 DPI], [0.50 px/unit],
      [Mini 64 px], [0.16 px/unit],
    )
  ]
)

#v(0.6em)

*Z-order (jos → sus):*
+ Câmpul scutului (fill navy)
+ Conturul scutului (stroke gold w=3)
+ Banderola + clipPath (fill gold)
+ Moulduri banderolă (4 lines stroke navy)
+ Text UNGHENI (Cinzel 38 medium, fill navy)
+ Cercurile laterale L, R (stroke gold w=6)
+ Cercul central M (r=48, desenat ultimul)
+ Tija (fill gold)
+ 6 bare ondulate (stroke gold w=5)
+ Bit: crossbar + blade + ward 1 + ward 2 (fill gold)

#pagebreak()

// ========== SHEET 2: SHIELD PATH ==========
= Planșa 2 · Conturul scutului — geometrie Bezier

== Path complet

```
M 20,20
L 380,20
L 380,340
C 380,420  365,476  215,476
C 210,476  200,490  200,498
C 200,490  190,476  185,476
C 35,476   20,420   20,340
Z
```

== Componente

#dim-table(
  ([Latura sus],     [`M(20,20) → L(380,20)`],      [W=360]),
  ([Latura dreapta], [vertical x=380, y: 20→340],   [H=320]),
  ([Umăr dreapta],   [Bezier la J_R=(215,476), ctrl=(380,420) & (365,476)], [tangentă verticală sus]),
  ([Vârf dreapta],   [Bezier la apex=(200,498), ctrl=(210,476) & (200,490)], [depth 22]),
  ([Vârf stânga],    [Bezier la J_L=(185,476), ctrl=(200,490) & (190,476)], [oglindire]),
  ([Umăr stânga],    [Bezier la (20,340), ctrl=(35,476) & (20,420)],   [oglindire]),
  ([Latura stânga],  [vertical x=20, y: 340→20],    [H=320]),
)

== „Virgula" (vârful jos)

Picătura de la bază compusă din 2 Bezier cubice scurte:
- *Lățime J_L↔J_R:* 30 unități (~8% din W)
- *Adâncime sub linia umerilor:* 22 unități
- *Tangentă orizontală în J_L, J_R:* control points pe `y=476`

== Continuitate G1 la umeri

În `(20, 340)` și `(380, 340)`, primul punct de control e la `y=420` *pe axa verticală* — astfel tangenta în acele puncte rămâne verticală → tranziție lină fără kink.

#pagebreak()

// ========== SHEET 3: BOW ==========
= Planșa 3 · Bow — trei cercuri interconectate

#align(center)[
  #cetz.canvas(length: 0.8mm, {
    import cetz.draw: *

    // Reference horizontal line (the colinear centers axis)
    line((110, 0), (290, 0),
         stroke: (paint: rgb("#1a5fb4"), thickness: 0.5pt, dash: "dashed"))
    content((300, 0), text(7pt, fill: rgb("#1a5fb4"))[y = 190])

    // Side rings first (z-bottom)
    circle((164, 0), radius: 46, fill: none, stroke: 2pt + rgb("#c89826"))
    circle((236, 0), radius: 46, fill: none, stroke: 2pt + rgb("#c89826"))
    // Middle ring last (z-top)
    circle((200, 0), radius: 48, fill: none, stroke: 2pt + rgb("#c89826"))

    // Centers
    for (x, lab) in ((164, "L"), (200, "M"), (236, "R")) {
      circle((x, 0), radius: 1.5, fill: red, stroke: none)
      content((x, 4), text(7pt, weight: "medium", fill: red, lab))
    }

    // Radius callouts
    line((200, 0), (248, 0), stroke: (paint: rgb("#a32"), thickness: 0.5pt))
    content((226, 3), text(7pt, fill: rgb("#a32"))[r=48])

    line((164, 0), (118, 0), stroke: (paint: rgb("#a32"), thickness: 0.5pt))
    content((140, 3), text(7pt, fill: rgb("#a32"))[r=46])

    line((236, 0), (282, 0), stroke: (paint: rgb("#a32"), thickness: 0.5pt))
    content((260, 3), text(7pt, fill: rgb("#a32"))[r=46])

    // Center-to-center spacing
    line((164, 60), (200, 60), stroke: (paint: rgb("#a32"), thickness: 0.5pt))
    line((164, 57), (164, 63), stroke: (paint: rgb("#a32"), thickness: 0.5pt))
    line((200, 57), (200, 63), stroke: (paint: rgb("#a32"), thickness: 0.5pt))
    content((182, 65), text(7pt, fill: rgb("#a32"))[d=36])

    line((200, 60), (236, 60), stroke: (paint: rgb("#a32"), thickness: 0.5pt))
    line((236, 57), (236, 63), stroke: (paint: rgb("#a32"), thickness: 0.5pt))
    content((218, 65), text(7pt, fill: rgb("#a32"))[d=36])
  })
]

#v(0.4cm)

#dim-table(
  ([C_L cerc stânga], [`cx=164, cy=190, r=46`], [Ø 92]),
  ([C_M cerc central], [`cx=200, cy=190, r=48`], [Ø 96]),
  ([C_R cerc dreapta], [`cx=236, cy=190, r=46`], [Ø 92]),
  ([Distanță centre adiacente], [36 unități], [= 0.75 × r_M]),
  ([Stroke], [`stroke="#c89826" stroke-width="6"`], [w=6]),
  ([Fill], [`fill="none"`], [outline only]),
  ([Z-order], [side rings primii, middle ULTIMUL], [iluzie 3D subtilă]),
)

#pagebreak()

// ========== SHEET 4: SHAFT + BIT ==========
= Planșa 4 · Tija și bit-ul

#grid(columns: (1fr, 1fr), gutter: 1em,
  [
    *Tija (shaft)*
    #dim-table(
      ([Rect], [`x=194 y=238 w=12 h=110`], [12×110]),
      ([Axă verticală], [x = 200], [-]),
      ([Conexiune sus], [baza C_M (y=238)], [-]),
      ([Capăt jos], [intră în crossbar (y=348)], [-]),
      ([Tip], [solid fill `#c89826`], [-]),
    )

    *Crossbar (umăr cheie)*
    #dim-table(
      ([Rect], [`x=175 y=352 w=50 h=10`], [50×10]),
      ([Centrare], [pe x=200], [-]),
    )

    *Blade (lamă)*
    #dim-table(
      ([Rect], [`x=194 y=362 w=12 h=44`], [12×44]),
      ([Capăt jos], [y=406], [-]),
    )
  ],
  [
    *Ward 1 (dinte superior)*
    #dim-table(
      ([Rect], [`x=162 y=374 w=32 h=10`], [32×10]),
      ([Proeminență stânga], [32px from blade], [-]),
    )

    *Ward 2 (dinte inferior)*
    #dim-table(
      ([Rect], [`x=158 y=392 w=36 h=10`], [36×10]),
      ([Proeminență stânga], [36px from blade], [+4 vs W1]),
    )

    *Bit profil ascendent*

    Ward 2 e cu 4 unități mai lat decât Ward 1 → profil tipic de cheie warded cu zimți crescători descendent.

    *Gap între wards:* 8 unități între Ward 1 bottom (y=384) și Ward 2 top (y=392).

    *Total bit bbox:* x=158→230, y=352→406 → *72×54*

    *Asimetrie stânga vs dreapta:* 42 vs 30 unități față de axa cheii (raport 1.4:1).
  ]
)

#pagebreak()

// ========== SHEET 5: WAVY BARS ==========
= Planșa 5 · Cele 6 bare ondulate

#dim-table(
  ([Path stâng (1 bar)], [`M 40,Y q 18,-9 36,0 t 36,0 t 36,0`], [108×18]),
  ([Path drept (oglindit)], [`M 252,Y q 18,-9 36,0 t 36,0 t 36,0`], [108×18]),
  ([Poziții Y (3 bare/parte)], [y = 278, 308, 338], [Δy=30]),
  ([Wavelength], [36 unități per hump], [3 humps total]),
  ([Amplitude], [9 unități], [peak-to-baseline]),
  ([Stroke], [`stroke="#c89826" width="5" linecap="round"`], [w=5]),
  ([Bbox stânga], [x:40→148, y:269→347], [108×78]),
  ([Bbox dreapta], [x:252→360, y:269→347], [oglindire]),
)

#v(0.5em)

== Path analysis

`q 18,-9 36,0` — primul hump quadratic Bezier:
- Start: punctul curent
- Control point: +(18,-9) relativ — mid-point la 18px dreapta, 9px sus
- End: +(36,0) relativ — 36px dreapta, aceeași y
- Rezultat: hump SUS

`t 36,0` — humps următori (smooth quadratic continuation):
- Control point oglindit automat din precedentul
- End +(36,0) — același pas orizontal
- Alternează SUS/JOS automat

3 segmente `t` → 3 humps. Amplitude 9, wavelength 36, total length 3×36=108.

== Semnificație heraldică

6 bare ondulate (3 stânga + 3 dreapta) = râul Prut care delimitează orașul la est. Pasele ondulate = motivul heraldic standard pentru apă curgătoare. „Scurtate" în blazon = nu se extind până la marginile scutului.

#pagebreak()

// ========== SHEET 6: BANNER + TYPOGRAPHY ==========
= Planșa 6 · Banderola și tipografie

#dim-table(
  ([Banner background], [`rect x=0 y=20 w=400 h=62 fill="#c89826"`], [400×62]),
  ([Clip-path], [shieldClip — tăiat la conturul scutului], [-]),
  ([Outer moulding sus], [`line (28,26)→(372,26) w=0.8`], [344px]),
  ([Outer moulding jos], [`line (28,76)→(372,76) w=0.8`], [344px]),
  ([Inner moulding sus], [`line (40,29)→(360,29) w=0.5`], [320px]),
  ([Inner moulding jos], [`line (40,73)→(360,73) w=0.5`], [320px]),
  ([Spațiu între mouldings], [3 unități offset interior], [double-rule]),
)

#v(0.4em)

== Tipografie

#dim-table(
  ([Font], [Cinzel (Google Fonts, OFL)], [-]),
  ([Weight], [500 (Medium)], [-]),
  ([Font-size], [38], [-]),
  ([Letter-spacing], [10], [-]),
  ([Fill], [`#102a5c` (Navy)], [-]),
  ([text-anchor], [middle], [centrat pe x=200]),
  ([Baseline], [y=64], [centrare optică]),
  ([dominant-baseline], [alphabetic], [baseline clasică]),
  ([Cap height estim.], [≈ 28 unități], [45% h banner]),
  ([Lățime text totală], [≈ 265 unități], [73% w banner]),
)

== Stack font

```
Cinzel → Trajan Pro → EB Garamond → Liberation Serif → serif
```

Caractere capitale inscripționale romane, inspirat din coloana lui Traian (sec. II d.Hr.).

#pagebreak()

// ========== SHEET 7: COLORS + SUMMARY ==========
= Planșa 7 · Culori și sumar coordonate

#grid(columns: (1fr, 1fr), gutter: 1.5em,
  [
    #block(fill: rgb("#102a5c"), height: 3.5cm, width: 100%, radius: 4pt)
    #v(0.3em)
    *Ungheni Navy* \
    HEX `#102a5c` \
    RGB `(16, 42, 92)` \
    CMYK `100·90·30·30` \
    Pantone 2766 C
  ],
  [
    #block(fill: rgb("#c89826"), height: 3.5cm, width: 100%, radius: 4pt)
    #v(0.3em)
    *Ungheni Gold* \
    HEX `#c89826` \
    RGB `(200, 152, 38)` \
    CMYK `15·35·90·10` \
    Pantone 124 C
  ]
)

#v(0.8em)

== Sumar coordonate cheie

#table(
  columns: (1fr, 1fr, 1fr),
  stroke: (x, y) => if y == 0 { (bottom: 0.6pt + black) } else { (bottom: 0.2pt + rgb("#ccc")) },
  inset: (x: 0.5em, y: 0.4em),
  align: (left, left, left),
  table.header([*Element*], [*Bounding box*], [*Centru*]),
  [Shield], [(20, 20, 360, 478)], [(200, 259)],
  [Banner], [(20, 20, 360, 62)], [center y=51],
  [Bow C_L], [(118, 144, 92, 92)], [(164, 190)],
  [Bow C_M], [(152, 142, 96, 96)], [(200, 190)],
  [Bow C_R], [(190, 144, 92, 92)], [(236, 190)],
  [Shaft], [(194, 238, 12, 110)], [axă x=200],
  [Crossbar], [(175, 352, 50, 10)], [axă x=200],
  [Ward 1], [(162, 374, 32, 10)], [-],
  [Ward 2], [(158, 392, 36, 10)], [-],
  [Bars left], [(40, 269, 108, 78)], [3 paths],
  [Bars right], [(252, 269, 108, 78)], [3 paths],
  [Virgulă apex], [(185, 476, 30, 22)], [(200, 498)],
)

#v(1cm)

#align(center)[
  #text(8pt, fill: rgb("#888"))[
    Plan constructiv v1 · Identitate civică Ungheni · 2026 \
    Variante derivate: `logo-mini.svg`, `logo-mono.svg`.
  ]
]
