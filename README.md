# Ungheni — Community Mark

Un mark civic *independent* inspirat din motivele heraldice asociate orașului Ungheni (cheia + apele Prutului).

**Acesta NU este însemnul oficial al primăriei sau al autorității locale.** Este o reinterpretare grafică modernă, plată, destinată folosirii libere de comunitate (organizații, evenimente, presa locală, proiecte educaționale) fără proceduri birocratice de avizare.

## Fișiere principale

| Fișier | Descriere |
|---|---|
| `logo.svg` | Mark primar — versiunea completă (color) |
| `logo-mini.svg` | Mark secundar — versiune simplificată pentru aplicații mici (favicon, app icon) |
| `logo-mono.svg` | Versiune monocromă cu `currentColor` (inline + CSS color) |
| `logo-mono-dark.svg` | Mono pre-baked navy (#102a5c) — pentru fundaluri deschise |
| `logo-mono-light.svg` | Mono pre-baked alb — pentru fundaluri închise |
| `logo-mini-mono*.svg` | Variante mono ale mark-ului mic |

## Documente

| Fișier | Descriere |
|---|---|
| `brandbook.pdf` / `brandbook.typ` | Style guide complet (sistem logo, culori, tipografie, clear space, DO/DON'T, aplicații) |
| `blueprint.pdf` / `blueprint.typ` | Desen tehnic constructiv cu toate coordonatele și dimensiunile |
| `compare.html` | Pagină de comparație: original vs reconstrucție, plus toate variantele la diferite dimensiuni |
| `editor.html` | Editor interactiv pentru ajustări vizuale (drag/scale per element, undo/redo) |

## Structura folderelor

```
.
├── README.md
├── logo*.svg                # toate variantele mark-ului (sursă)
├── brandbook.{typ,pdf}      # style guide
├── blueprint.{typ,pdf}      # desen tehnic
├── compare.html             # pagină comparație
├── editor.html              # editor interactiv
├── Pasted image*.png        # imagini de referință originale
├── assets/                  # PNG-uri generate + clearspace SVG
├── screenshots/             # screenshots dezvoltare (compare-v*.png, bit-*.png, etc.)
└── trace/                   # potrace artifacts (vectorizare poza referință)
```

## Paletă

- *Ungheni Navy:* `#102a5c` (RGB 16, 42, 92) — Pantone 2766 C
- *Ungheni Gold:* `#c89826` (RGB 200, 152, 38) — Pantone 124 C

## Tipografie

Cinzel (Google Fonts, OFL) — capitale Roman inscripțional, Medium 500, font-size 38, letter-spacing 10.

## Compilare

```bash
typst compile brandbook.typ
typst compile blueprint.typ
```

Necesită Typst 0.14+ și cetz 0.4.2 (auto-descărcat la prima compilare).

## Regenerare PNG din SVG

```bash
inkscape logo.svg --export-type=png --export-filename=assets/logo.png --export-width=600
```

(repetă pentru fiecare variantă)

## Vezi pagina interactivă

```bash
python3 -m http.server 8765
# apoi deschide http://localhost:8765/compare.html sau /editor.html
```
