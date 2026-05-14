 # DESIGN.md — Self App Design System

---

## Typography

One font family throughout: **DM Sans**.
No serif. No mixing.

### Type Scale

| Role | Size | Weight | Color | Notes |
|---|---|---|---|---|
| Prompt / Hero | 22px | 300 | #222220 | Reflection question, large display text |
| Body | 15px | 400 | #222220 | Post text, journal entries, descriptions |
| Feature Title | 15px | 600 | #222220 | Section headers, card titles |
| Chip | 13px | 400 | #222220 | All chip labels |
| Section Label | 11px | 500 | #888784 | Uppercase, letter-spacing 0.08em |
| Secondary | 13px | 400 | #888784 | Timestamps, community tags, meta info |
| Tertiary / Hint | 13px | 400 | #BBBBBB | Placeholder text, disabled states |

### Line Height
- Prompt / Hero: 1.35
- Body: 1.6
- All others: 1.4

### Letter Spacing
- Section Label only: 0.08em + text-transform: uppercase
- All other roles: default (no tracking)

---

## Color

### Base Palette

| Token | Hex | Usage |
|---|---|---|
| `--color-bg` | #FFFFFF | App background |
| `--color-surface` | #F5F5F3 | Cards, inputs, chip backgrounds, modals |
| `--color-border` | #E8E8E5 | All borders |
| `--color-border-strong` | #222220 | Chip borders, active states |
| `--color-text-primary` | #222220 | All primary text |
| `--color-text-secondary` | #888784 | Labels, meta, secondary info |
| `--color-text-tertiary` | #BBBBBB | Placeholders, hints, disabled |
| `--color-dark` | #1A1A1A | Presence Circle center, dark surfaces |

### Content Type Badge Colors

Badges appear on Feed cards, top-right corner.

| Badge | Background | Text |
|---|---|---|
| PROMPT | #F0EDE8 | #5C5550 |
| NOTICING | #EBF0ED | #445A4E |
| QUESTION | #EAE8F0 | #4A4870 |
| GRATITUDE | #F0EDE3 | #5C5640 |
| SHADOW | #EAEAEA | #444444 |
| RESPONSE | #E8EDF0 | #3D5060 |
| MENTOR | #222220 | #FFFFFF |
| PRESENCE | #1A1A1A | #FFFFFF |

---

## Surfaces & Components

### Container Rule
Every rectangular element that holds content (cards, inputs, modals, sheets) follows the same base spec unless noted otherwise.

```
background:    var(--color-surface)   → #F5F5F3
border:        1px solid var(--color-border)   → #E8E8E5
border-radius: 16px
padding:       16px
```

### Chips

```
background:    #FFFFFF
border:        1px solid #222220
border-radius: 20px
padding:       6px 14px
font:          DM Sans, 13px, weight 400, color #222220
width:         fit-content
```

Active / selected chip:
```
background:    #222220
color:         #FFFFFF
border:        1px solid #222220
```

### Input / Chatbox

```
background:    #F5F5F3
border:        1px solid #E8E8E5
border-radius: 16px
padding:       14px 16px
font:          DM Sans, 15px, weight 400, color #222220
placeholder:   DM Sans, 15px, weight 400, color #BBBBBB, font-style: italic
min-height:    100px
```

### Cards (Feed, Journal)

```
background:    #FFFFFF
border-bottom: 1px solid #E8E8E5  (divider between cards, no outer border)
border-radius: 0
padding:       16px 20px
```

Cards are full-width with divider lines only — no individual card borders.

### Modals / Bottom Sheets

```
background:    #FFFFFF
border-radius: 20px 20px 0 0  (top corners only)
padding:       24px 20px
shadow:        none
```

---

## Spacing

| Token | Value | Usage |
|---|---|---|
| `--space-xs` | 4px | Icon gaps, tight internal spacing |
| `--space-sm` | 8px | Chip gap, inline element spacing |
| `--space-md` | 16px | Default padding, section gaps |
| `--space-lg` | 24px | Between major zones |
| `--space-xl` | 40px | Top-level section breathing room |

---

## Icons

Use **Lucide** icon set throughout.
Style: outline only, stroke-width 1.5, size 20px default.
Color: inherits from context (text-primary or text-secondary).

Navigation bar icons: 22px, stroke-width 1.5.
Reaction icons: 18px, stroke-width 1.5.

---

## Bottom Navigation Bar

```
background:    #FFFFFF
border-top:    1px solid #E8E8E5
height:        60px (+ safe area inset)
icon size:     22px
label:         DM Sans, 11px, weight 500, uppercase, letter-spacing 0.04em
active color:  #222220
inactive color:#BBBBBB
```

Tab order (left to right): Practice · Connect · Feed · Now · Journal

---

## Presence Circle (Now Section)

```
Outer ring background:  transparent
Center circle:          #1A1A1A, diameter ~100px
Center dot:             #FFFFFF, diameter 8px
Category nodes:         #FFFFFF background, #E8E8E5 border, 52px diameter
Category icon:          Lucide outline, 20px, color #222220
Category label:         DM Sans, 10px, weight 500, uppercase, color #222220
Active node:            #222220 background, white icon
```

---

## Animation Principles

- All transitions: `ease-out`, duration 200ms default
- Chip entry stagger: 60ms delay between chips
- Chip fade when another selected: opacity 0.35, scale 0.97
- Card expansion: height animated, `ease-out` 250ms, no jump
- Presence Circle node press: scale 0.94 on press, 1.0 on release

---

## Layout Principles

- All layouts: flex-based, percentages, relative units
- No hardcoded pixel widths on containers
- Mobile-first: designed for ~390px viewport width
- Safe area insets applied at root container level
- Generous vertical breathing room between zones (--space-lg minimum)

---

## What This System Is Not

- No gradients
- No shadows (except focus rings)
- No decorative illustrations in this milestone
- No color used for decoration — only for meaning (badges, states)
- No serif fonts

---

*Version: 1.0 — Web App implementation*
*Stack: React (web) — all units in px/rem, no React Native–specific APIs*

