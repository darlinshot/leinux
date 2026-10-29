# WAYBAR CONFIGURATION GUIDELINES FOR AGENT
This is a guideline for configuring waybar config, limited to this folder only.

## 0. Rules
- Do not create or modify any file or folder outside of this directory (~/.config/waybar)
- Do not generate any new files in this directory
- Do not do anything this guideline doesn't mention (out-of-scope)
- Do everything that this guideline mentions (in-scope)

## 1. Config
### Design
The bar is horizontal, spanning the entire width of the screen.

**Font:** JetBrainsMono Nerd Font Propo <br>
**Font size:** 20 <br>
**Bar height:** 40

Only include the following modules, in each region left, middle, right:
- Left:
    - Clock.
        - Format: `hour:minute` (military format) `dd/mm`
        - Example: `10:20 24/10`
- Middle:
    - Hyprland workspaces
        - Format: `{workspace name}`
- Right: (General format: `{appropriate icon} text`)
    - Volume (sink)
        - Icons:   
    - Brightness
        - Icons: 󰃠 󰃟 󰃞
    - Battery
        - Icons:
            - Regular (discharging): 󰁹 󰂀 󰁾 󰁼 󰁺
                - Below 10%: 󰂃
            - Charging: 󰂄

## 2. Style



### Palette
Create a color palette that defines the main colors of the config with the following namescheme:
```
    // Group 1: Muted Base Layer (Deeply muted, neutral surfaces)
    bg1: "#1a120e" 
    fg1: "#322824" 
    tx1: "#d8c2ba"     // Muted, warmer text tone
    bd1: "#52443d"        // Softer, less harsh border

    // Group 2: Accent Container Layer (Warmer structural containers)
    bg2: "#271e1a" 
    fg2: "#71361a"      
    tx2: "#f1dfd8"             // High contrast text for readability
    bd2: "#a08d85"

    // Accents: Shifted to lower chroma / pastel tones for that muted feel
    ac1: "#e6bead"              // Secondary is naturally more muted than primary
    ac2: "#d2c78f"               // Tertiary provides a balanced, warm counter-accent

    // Errors: Calmed down so they don't scream aggressively on a soft theme
    er1: "#ffb4ab" 
    er2: "#93000a" 
```

### Strict color formatting
Some widgets must follow a strict color/color palette.

1. Battery: Go from green -> yellow -> orange -> red
2. Brightness: eye-warming yellow (not orange)
3. Volume: 1 sky-blue color

## 3. Final words
Do not attempt to run waybar after editing the files.
