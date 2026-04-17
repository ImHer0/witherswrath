# Dialog Menu System Documentation

## Overview
This is a complete refactoring of the Wither's Wrath config menu from `tellraw` to native `/dialog` commands (1.21+).

## File Structure
```
wither/function/dialog/
├── main.mcfunction              # Entry point, shows main menu
├── page1_animation.mcfunction   # Animation selection (OFF/Default/Bedrock)
├── page2_toggles.mcfunction     # Toggle options (Trophy, Destruction, etc.)
├── page3_advanced.mcfunction    # Advanced options (SpawnReq, Bedrock mode)
├── page4_info.mcfunction        # Info and quick reset
├── handle_selection.mcfunction  # Routes main menu buttons
├── handle_animation.mcfunction  # Routes animation selection
├── handle_toggles.mcfunction    # Routes toggle button presses
└── test.mcfunction              # Demo function to open menu
```

## How Dialog Commands Work

### Syntax
```mcfunction
dialog <target> <type> <title> <content> <buttons>
```

### Types
- **simple**: Text content + buttons
- **form**: Text fields + buttons
- **form_modal**: Modal dialog + buttons

### Button Handling
When a player clicks a button, the selector `@s[scores={selected.dialog_button=N}]` matches where N is the button index (0-based).

### Example
```mcfunction
dialog @s simple "Title" "Content" ["Button 0", "Button 1", "Button 2"]

# After clicking Button 1:
execute if score @s selected.dialog_button matches 1 run function some:function
```

## Integration Points

### 1. Adding to Tick Loop
Insert into your main tick function:
```mcfunction
execute as @a if score @s selected.dialog_button matches 0.. run function wither:dialog/handle_selection
```

### 2. Calling the Menu
```mcfunction
/function wither:dialog/main
# Or for testing:
/function wither:dialog/test
```

### 3. Custom Minecraft Tags
Update `minecraft:tags/function/load.json` to include:
```json
{
  "values": [
    "wither:config/settings"
  ]
}
```

And `minecraft:tags/function/tick.json`:
```json
{
  "values": [
    "wither:dialog/tick_handler"
  ]
}
```

## Animation Selection
Users see current selection highlighted:
- 🔴 OFF (Disabled)
- ⚪ Default (Selected)
- 🔵 Bedrock (Selected)

## Default Values Storage
All settings remain in `wither:options` storage:
```
wither:options {
  toggleanimation: Disabled|Default|Bedrock,
  toggletrophy: Enabled|Disabled,
  toggledestruction: Enabled|Disabled,
  togglehoming: Enabled|Disabled,
  togglecharge: Enabled|Disabled,
  togglespawns: Enabled|Disabled,
  toggleboomtp: Enabled|Disabled,
  toggledash: Enabled|Disabled,
  toggleweather: Enabled|Disabled,
  spawnreq: Enabled|Disabled
}
```

## Adding Buttons to Default Menus for Configs

To add config access buttons to default Minecraft menus:

### Option 1: Advancement Reward
```json
{
  "criteria": {
    "trigger": {
      "trigger": "minecraft:tick",
      "conditions": {
        "player": [
          {
            "condition": "minecraft:entity_properties",
            "entity": "this",
            "predicate": {
              "type": "minecraft:player"
            }
          }
        ]
      }
    }
  },
  "rewards": {
    "function": "wither:dialog/main"
  }
}
```

### Option 2: Command Block Trigger
Place in spawn area:
```mcfunction
execute as @a[tag=!openedConfig] run function wither:dialog/main
tag @a add openedConfig
```

### Option 3: Chat Command
Let players type `/trigger config` to open menu. Setup:
```mcfunction
# In load function:
scoreboard objectives add config trigger

# In main function:
execute as @a[scores={config=1..}] run function wither:dialog/main
scoreboard players reset @a config
```

### Option 4: Item Click (Carrot on Stick)
Use a scoreboard to detect held items and open dialog when player jumps.

## Testing
Run: `/function wither:dialog/test`

This will open the main menu for you to test navigation and button handling.

## Next Steps for Production
1. Hook dialog handler into tick loop
2. Update minecraft function tags
3. Add button response feedback messages
4. Link to actual toggle functions
5. Test all pages and transitions
6. Consider adding more dialog types (form for number inputs, etc.)
