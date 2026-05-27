#import "@preview/cetz:0.4.2"
#set document(title: "Ungheni — Ghid de stil al mark-ului comunitar")
#set page(
  paper: "a4",
  margin: (x: 2.2cm, y: 2cm),
  header: context if counter(page).get().first() > 1 {
    set text(8pt, fill: rgb("#888"))
    align(right)[Ungheni — Ghid de stil al mark-ului comunitar · v1]
  },
  footer: context if counter(page).get().first() > 1 {
    set text(8pt, fill: rgb("#888"))
    grid(columns: (1fr, auto), align: (left, right),
      [Mark comunitar independent · ne-oficial],
      counter(page).display()
    )
  },
)
#set text(font: ("Liberation Serif", "Cinzel", "Cormorant Garamond"), size: 10pt, lang: "ro")
#set par(justify: true, leading: 0.7em)
#show heading.where(level: 1): set text(28pt, weight: "regular", tracking: 4pt)
#show heading.where(level: 2): set text(16pt, weight: "regular", tracking: 1.5pt, fill: rgb("#102a5c"))
#show heading.where(level: 3): set text(12pt, weight: "medium", tracking: 1pt)
#show heading: set block(below: 0.8em, above: 1.5em)

// ============ COVER ============
#align(center + horizon)[
  #v(2cm)
  #image("assets/logo.png", width: 7cm)
  #v(1.5cm)
  #text(36pt, tracking: 8pt, weight: "regular")[UNGHENI]
  #v(0.3cm)
  #text(13pt, tracking: 3pt, fill: rgb("#666"))[GHID DE STIL · MARK COMUNITAR]
  #v(0.5cm)
  #text(10pt, fill: rgb("#888"))[Identitate civică independentă · ne-oficială · v1 · 2026]
]

#pagebreak()
#counter(page).update(1)

// ============ INDEX ============
= Cuprins

#outline(title: none, depth: 2)

#pagebreak()

// ============ INTRODUCTION ============
= Introducere

== Despre acest logo

Acest design este o reconstrucție vizuală independentă, inspirată din motivele heraldice tradiționale asociate orașului Ungheni — cheia (orașul-poartă, granița cu România) și apele Prutului (cele șase bare ondulate, câte trei pe fiecare parte).

#block(inset: 1em, fill: rgb("#fff4e0"), radius: 4pt, stroke: 0.5pt + rgb("#c89826"))[
  *Notă importantă:* aceasta NU este stema oficială a orașului Ungheni și nu este destinată documentelor oficiale ale autorității locale.
  Este un *mark comunitar independent*, creat pentru folosire liberă în contexte civice neoficiale (organizații comunitare, evenimente locale, proiecte educaționale, produse comunitare, presa locală, etc.) — fără a fi nevoie să parcurgeți procesul birocratic de obținere a permisiunii oficiale pentru folosirea însemnului municipal.
]

Designul preia vocabularul vizual local (cheie + ape Prut) într-o execuție grafică modernă, plată, optimizată pentru aplicații digitale și print contemporane.

== Autor și adaptare

Reconstrucția vizuală și adaptarea post-sovietică au fost efectuate de *Lightcyphers SRL*.

*Motivația:* reutilizarea unei imagini vizuale bine cunoscute (motivul cheie + ape Prut, asociat tradițional orașului Ungheni încă din perioada sovietică) și adaptarea ei la realitatea Republicii Moldova independente.

Modificări intenționate față de versiunea sovietică originală:

- *Alfabet latin* pentru numele orașului (UNGHENI) — înlocuiește forma chirilică УНГЕНЫ
- *Dinții cheii orientați spre vest* (stânga) — simbolizează deschiderea spre Europa și granița vestică, înlocuind orientarea spre est din versiunea sovietică
- *Paletă plată modernă* — fără efectele de metal turnat ale insignei vechi
- *Tipografie Cinzel inscripțional* — capitale Roman clasice, neutre cultural

#block(inset: 0.8em, fill: rgb("#f4f0e6"), radius: 4pt, width: 100%)[
  #set text(8.5pt, fill: rgb("#555"))
  © 2016-2026 *Lightcyphers SRL* — reconstrucție și adaptare. Designul este pus la dispoziția
  comunității pentru folosire liberă în contexte civice ne-oficiale. Motivele heraldice
  istorice (cheia + apele Prutului) reprezintă patrimoniu vizual public asociat orașului
  Ungheni și nu sunt revendicate ca proprietate exclusivă.
]

== Conceptul vizual

Identitatea Ungheni este construită pe trei valori:

#grid(columns: (1fr, 1fr, 1fr), gutter: 1em,
  [#text(weight: "medium")[Patrimoniu] \ Heraldica clasică, capitale Roman inscripțional, paletă navy-gold tradițională municipală.],
  [#text(weight: "medium")[Tranziție] \ Oraș-graniță, alfabet latin post-1991, sinteză culturală și geografică.],
  [#text(weight: "medium")[Curăție] \ Geometrie plată, fără efecte metalice false, lizibilitate la toate scalele.]
)

#pagebreak()

// ============ LOGO SYSTEM ============
= Sistemul logo

== Logo primar

Versiunea completă a mark-ului se folosește în materiale de comunicare publică ale comunității: pagini web, headere, postere, broșuri, materiale tipărite de format mare, ambient.

#align(center)[
  #image("assets/logo.png", width: 8cm)
]

#text(9pt, fill: rgb("#666"))[Fișier: `logo.svg` · viewBox 400×500 · Dimensiune minimă recomandată: 60 mm pe latura mare.]

== Logo secundar (mark simplificat)

Versiune simplificată pentru aplicații mici: favicon, app icon, broderie textilă, ștampile mici. Elemente reduse: scut, bow trefoil, tijă, bit minim, două ondulații hint pentru Prut.

#grid(columns: (1fr, 1fr, 1fr, 1fr), gutter: 1em, align: center + horizon,
  [#image("assets/logo-mini.png", width: 3cm) \ #text(8pt)[128 px]],
  [#image("assets/logo-mini.png", width: 2cm) \ #text(8pt)[64 px]],
  [#image("assets/logo-mini.png", width: 1cm) \ #text(8pt)[32 px]],
  [#image("assets/logo-mini.png", width: 0.5cm) \ #text(8pt)[16 px]]
)

#text(9pt, fill: rgb("#666"))[Fișier: `logo-mini.svg` · viewBox 100×125 · Folosire sub 60 mm pe latura mare.]

== Variante monocrome

Pentru aplicații fără culoare (print monocrom, embossing, broderie cu un singur fir, foliere metalică, etc.).

#grid(columns: (1fr, 1fr), gutter: 1em,
  [
    #block(fill: rgb("#fff"), inset: 1em, radius: 4pt)[
      #align(center)[
        #image("assets/logo-mono-dark.png", width: 5cm)
      ]
    ]
    #v(0.3em)
    #text(9pt)[*Mono / închis pe deschis* — pentru fundaluri deschise (hârtie, ceramică albă, perete alb). Culoare: `#102a5c`.]
  ],
  [
    #block(fill: rgb("#0a0a0a"), inset: 1em, radius: 4pt)[
      #align(center)[
        #image("assets/logo-mono-light.png", width: 5cm)
      ]
    ]
    #v(0.3em)
    #text(9pt)[*Mono / deschis pe închis* — pentru fundaluri închise (interfețe închise (dark UI), tricouri negre, materiale închise). Culoare: `#ffffff`.]
  ]
)

#text(9pt, fill: rgb("#666"))[Fișier canonic cu `currentColor`: `logo-mono.svg`. Variante pre-baked: `logo-mono-dark.svg`, `logo-mono-light.svg`.]

#pagebreak()

// ============ COLORS ============
= Paleta de culori

Sistemul folosește exclusiv două culori. Nu se introduc nuanțe, gradiente sau efecte metalice.

#grid(columns: (1fr, 1fr), gutter: 2em,
  [
    #block(fill: rgb("#102a5c"), height: 4cm, width: 100%, radius: 4pt)[]
    #v(0.5em)
    *Ungheni Navy* \
    HEX `#102a5c` \
    RGB `16 · 42 · 92` \
    CMYK `100 · 90 · 30 · 30` \
    Pantone 2766 C
  ],
  [
    #block(fill: rgb("#c89826"), height: 4cm, width: 100%, radius: 4pt)[]
    #v(0.5em)
    *Ungheni Gold* \
    HEX `#c89826` \
    RGB `200 · 152 · 38` \
    CMYK `15 · 35 · 90 · 10` \
    Pantone 124 C
  ]
)

== Utilizare

Navy = câmpul scutului, textul pe banderolă. \
Gold = toate elementele heraldice (banderolă, cercuri, tijă, bit, bare, contur).

În variante monocrome, una din cele două culori se folosește exclusiv (vezi pagina anterioară).

#pagebreak()

// ============ TYPOGRAPHY ============
= Tipografie

== Font principal

#align(center)[
  #text(font: ("Cinzel", "Liberation Serif"), 80pt, tracking: 12pt, weight: "medium", fill: rgb("#102a5c"))[
    UNGHENI
  ]
]

*Familie:* Cinzel #h(1em) *Greutate:* Medium (500) #h(1em) *Tracking:* 10 \
*Sursă:* Google Fonts (licență OFL, free) \
*Caracter:* capitale Roman inscripțional, inspirat din coloana lui Traian (sec. II d.Hr.)

== Listă de fallback (font alternativ)

În cazurile în care Cinzel nu este disponibil:
```
Cinzel → Trajan Pro → Cormorant Garamond → EB Garamond → Liberation Serif → serif
```

== Reguli

- Numai capitale. Nu se folosește forma cu litere mici.
- Letter-spacing 8-12 în funcție de mărime (mai mic la litere mari).
- Greutatea Medium (500) este standardul. Bold/Heavy (aldin gros) se evită — fac textul greoi.
- Nu se folosesc alte fonturi pentru cuvântul „UNGHENI" pe banderolă.

#pagebreak()

// ============ CLEAR SPACE ============
= Spațiu de siguranță

În jurul logo-ului trebuie păstrat un spațiu minim liber egal cu *înălțimea banderolei* (notat *X* în diagrama de mai jos). Niciun alt element grafic, text sau imagine nu trebuie să intre în această zonă.

#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    let s = 0.012  // scale: 1 unit = 0.012cm

    // Clear-space dashed boundary
    rect((-62*s, -62*s), ((400 + 62)*s, (500 + 62)*s),
         stroke: (paint: rgb("#888"), thickness: 1pt, dash: "dashed"), fill: none)

    // Logo placeholder rect (just a colored rect with the actual logo image)
    rect((0, 0), (400*s, 500*s),
         stroke: 0.4pt + rgb("#ccc"), fill: none)

    // X arrows top (between -62 and 0)
    line((0, 0), (0, -62*s), stroke: 0.6pt + rgb("#a32"))
    line((-3*s, 0), (3*s, 0), stroke: 0.6pt + rgb("#a32"))
    line((-3*s, -62*s), (3*s, -62*s), stroke: 0.6pt + rgb("#a32"))
    content((10*s, -31*s), text(9pt, fill: rgb("#a32"), weight: "medium")[X])

    // X arrows right (between 400 and 400+62)
    line((400*s, 0), ((400 + 62)*s, 0), stroke: 0.6pt + rgb("#a32"))
    line((400*s, -3*s), (400*s, 3*s), stroke: 0.6pt + rgb("#a32"))
    line(((400+62)*s, -3*s), ((400+62)*s, 3*s), stroke: 0.6pt + rgb("#a32"))
    content(((400+31)*s, 10*s), text(9pt, fill: rgb("#a32"), weight: "medium")[X])

    // Embed the actual logo PNG inside the placeholder area
    content((200*s, 250*s),
            image("assets/logo.png", width: 4.8cm))
  })
]

#text(9pt, fill: rgb("#666"))[X = înălțimea banderolei (62 unități = înălțimea benzii cu UNGHENI).]

= Dimensiune minimă

Pentru a păstra lizibilitatea, logo-ul nu se folosește mai mic de următoarele dimensiuni:

#grid(columns: (1fr, 1fr), gutter: 1em, stroke: 0.5pt,
  align: center + horizon, inset: 0.8em,
  [Mark primar],         [Mark secundar],
  [60 mm pe latura mare \ (200 px la 96 DPI)], [16 mm pe latura mare \ (32 px la 96 DPI)],
)

#pagebreak()

// ============ DO / DON'T ============
= Utilizare corectă / incorectă

== ✓ Corect

#grid(columns: (1fr, 1fr, 1fr), gutter: 1em, align: center,
  [
    #block(fill: rgb("#fff"), inset: 0.6em, radius: 4pt, stroke: 0.5pt + rgb("#ccc"))[
      #image("assets/logo.png", width: 3.5cm)
    ]
    #text(8pt)[Mark primar color pe fundal alb — curat, contrast maxim.]
  ],
  [
    #block(fill: rgb("#0a0a0a"), inset: 0.6em, radius: 4pt)[
      #image("assets/logo-mono-light.png", width: 3.5cm)
    ]
    #text(8pt)[Varianta mono deschis pe fundal negru.]
  ],
  [
    #block(fill: rgb("#f4ecd6"), inset: 0.6em, radius: 4pt, stroke: 0.5pt + rgb("#ccc"))[
      #image("assets/logo.png", width: 3.5cm)
    ]
    #text(8pt)[Mark primar pe fundal crem deschis — contrast scăzut acceptabil.]
  ],
)

== ✗ Incorect

#grid(columns: (1fr, 1fr, 1fr), gutter: 1em, align: center,
  [
    #block(fill: rgb("#c89826"), inset: 0.6em, radius: 4pt)[
      #image("assets/logo.png", width: 3.5cm)
    ]
    #text(8pt, fill: rgb("#a00"))[*NU* — mark color pe fundal aur — banderola se topește în fundal.]
  ],
  [
    #block(fill: rgb("#fff"), inset: 0.6em, radius: 4pt, stroke: 0.5pt + rgb("#ccc"))[
      #scale(x: 60%, y: 100%, image("assets/logo.png", width: 3.5cm))
    ]
    #text(8pt, fill: rgb("#a00"))[*NU* — întindere disproporționată. Mark-ul se scalează numai uniform.]
  ],
  [
    #block(fill: rgb("#fff"), inset: 0.6em, radius: 4pt, stroke: 0.5pt + rgb("#ccc"))[
      #rotate(15deg, image("assets/logo.png", width: 3.5cm))
    ]
    #text(8pt, fill: rgb("#a00"))[*NU* — rotire. Mark-ul stă întotdeauna vertical.]
  ],
)

#v(1em)

#grid(columns: (1fr, 1fr, 1fr), gutter: 1em, align: center,
  [
    #block(fill: rgb("#102a5c"), inset: 0.6em, radius: 4pt)[
      #image("assets/logo.png", width: 3.5cm)
    ]
    #text(8pt, fill: rgb("#a00"))[*NU* — color pe fundal navy — câmpul scutului se topește.]
  ],
  [
    #block(fill: rgb("#fff"), inset: 0.6em, radius: 4pt, stroke: 0.5pt + rgb("#ccc"))[
      #image("assets/logo.png", width: 1.5cm)
    ]
    #text(8pt, fill: rgb("#a00"))[*NU* — mark primar sub 60 mm — folosește varianta secundară.]
  ],
  [
    #block(fill: rgb("#fff"), inset: 0.6em, radius: 4pt, stroke: 0.5pt + rgb("#ccc"))[
      #box(stroke: 3pt + rgb("#a00"), image("assets/logo.png", width: 3.5cm))
    ]
    #text(8pt, fill: rgb("#a00"))[*NU* — chenare suplimentare în jurul mark-ului.]
  ],
)

#pagebreak()

// ============ APPLICATIONS ============
= Aplicații tipice

#grid(columns: (1fr, 1fr), gutter: 1.5em,
  [
    *Materiale comunitare tipărite* \
    Mark primar color pe broșuri, fluturași, afișe — \
    poziționat sus-stânga la 20 mm de margine, înălțime 35 mm.
  ],
  [
    *Site web / antet aplicație* \
    Mark primar color sau mono-închis (în funcție de fundal), \
    înălțime 48-64 px.
  ],
  [
    *Favicon / pictogramă aplicație* \
    Exclusiv mark secundar (`logo-mini.svg`). \
    16 / 32 / 64 / 128 px conform sistem.
  ],
  [
    *Semnalistică exterioară* \
    Mark primar color sau mono. Pe material reflectorizant: \
    folosi varianta monocromă pentru lizibilitate.
  ],
  [
    *Veselă, ceramică, suvenire* \
    Mark primar color pe fundal alb / crem. \
    Embossing: variantă monocromă cu un singur ton.
  ],
  [
    *Tricouri și materiale textile* \
    Imprimare color (mark primar) sau monocromă \
    (mono-dark sau mono-light în funcție de culoarea tricoului).
  ],
)

#v(2em)

#align(center)[
  #block(inset: 1em, fill: rgb("#f4ecd6"), radius: 4pt, width: 14cm)[
    #set text(9pt, fill: rgb("#555"))
    #set par(justify: false)
    *Despre acest ghid* \
    \
    Acesta este un brand book pentru un *mark civic independent* — NU este însemnul oficial al
    autorității locale Ungheni. Designul este o reinterpretare grafică modernă a motivelor heraldice
    locale (cheia + apele Prutului), creat pentru a fi folosit liber de comunitate fără proceduri
    de avizare oficială. \
    \
    Folosiți-l pentru: proiecte civice independente, asociații comunitare, evenimente locale,
    organizații neguvernamentale, presa locală, conținut educațional, proiecte artistice. \
    \
    *Nu* îl folosiți pretinzând că este însemnul oficial al primăriei sau al altei autorități publice.
  ]
]
