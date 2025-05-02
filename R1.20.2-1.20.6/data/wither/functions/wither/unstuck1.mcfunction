execute rotated ~ 0 if block ~ ~-0.5 ~ water run data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {Motion:[0.0,8.0,0.0]}
execute rotated ~ 0 if block ~ ~0.5 ~ water run data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {Motion:[0.0,8.0,0.0]}

# Check 1 block radius in all directions (including corners)
    execute if block ~1 ~1 ~ bedrock run function wither:wither/motiondown
    execute if block ~1 ~-1 ~ bedrock run function wither:wither/motionup
    execute if block ~1 ~ ~1 bedrock run function wither:wither/motionup
    execute if block ~1 ~ ~-1 bedrock run function wither:wither/motionup
    execute if block ~ ~1 ~1 bedrock run function wither:wither/motiondown
    execute if block ~ ~1 ~-1 bedrock run function wither:wither/motiondown
    execute if block ~ ~-1 ~1 bedrock run function wither:wither/motionup
    execute if block ~ ~-1 ~-1 bedrock run function wither:wither/motionup
    execute if block ~1 ~1 ~1 bedrock run function wither:wither/motiondown
    execute if block ~1 ~1 ~-1 bedrock run function wither:wither/motiondown
    execute if block ~1 ~-1 ~1 bedrock run function wither:wither/motionup
    execute if block ~1 ~-1 ~-1 bedrock run function wither:wither/motionup
    execute if block ~-1 ~1 ~1 bedrock run function wither:wither/motiondown
    execute if block ~-1 ~1 ~-1 bedrock run function wither:wither/motiondown
    execute if block ~-1 ~-1 ~1 bedrock run function wither:wither/motionup
    execute if block ~-1 ~-1 ~-1 bedrock run function wither:wither/motionup

# Check directly above and below
    execute if block ~ ~1 ~ bedrock run function wither:wither/motiondown
    execute if block ~ ~-1 ~ bedrock run function wither:wither/motionup

# Check 2 blocks radius in all directions (including corners)
    execute if block ~2 ~2 ~ bedrock run function wither:wither/motiondown
    execute if block ~2 ~-2 ~ bedrock run function wither:wither/motionup
    execute if block ~2 ~ ~2 bedrock run function wither:wither/motionup
    execute if block ~2 ~ ~-2 bedrock run function wither:wither/motionup
    execute if block ~ ~2 ~2 bedrock run function wither:wither/motiondown
    execute if block ~ ~2 ~-2 bedrock run function wither:wither/motiondown
    execute if block ~ ~-2 ~2 bedrock run function wither:wither/motionup
    execute if block ~ ~-2 ~-2 bedrock run function wither:wither/motionup
    execute if block ~2 ~2 ~2 bedrock run function wither:wither/motiondown
    execute if block ~2 ~2 ~-2 bedrock run function wither:wither/motiondown
    execute if block ~2 ~-2 ~2 bedrock run function wither:wither/motionup
    execute if block ~2 ~-2 ~-2 bedrock run function wither:wither/motionup
    execute if block ~-2 ~2 ~2 bedrock run function wither:wither/motiondown
    execute if block ~-2 ~2 ~-2 bedrock run function wither:wither/motiondown
    execute if block ~-2 ~-2 ~2 bedrock run function wither:wither/motionup
    execute if block ~-2 ~-2 ~-2 bedrock run function wither:wither/motionup

# Check directly above and below
    execute if block ~ ~2 ~ bedrock run function wither:wither/motiondown
    execute if block ~ ~-2 ~ bedrock run function wither:wither/motionup

# Check 3 blocks radius in all directions (including corners)
    execute if block ~3 ~3 ~ bedrock run function wither:wither/motiondown
    execute if block ~3 ~-3 ~ bedrock run function wither:wither/motionup
    execute if block ~3 ~ ~3 bedrock run function wither:wither/motionup
    execute if block ~3 ~ ~-3 bedrock run function wither:wither/motionup
    execute if block ~ ~3 ~3 bedrock run function wither:wither/motiondown
    execute if block ~ ~3 ~-3 bedrock run function wither:wither/motiondown
    execute if block ~ ~-3 ~3 bedrock run function wither:wither/motionup
    execute if block ~ ~-3 ~-3 bedrock run function wither:wither/motionup
    execute if block ~3 ~3 ~3 bedrock run function wither:wither/motiondown
    execute if block ~3 ~3 ~-3 bedrock run function wither:wither/motiondown
    execute if block ~3 ~-3 ~3 bedrock run function wither:wither/motionup
    execute if block ~3 ~-3 ~-3 bedrock run function wither:wither/motionup
    execute if block ~-3 ~3 ~3 bedrock run function wither:wither/motiondown
    execute if block ~-3 ~3 ~-3 bedrock run function wither:wither/motiondown
    execute if block ~-3 ~-3 ~3 bedrock run function wither:wither/motionup
    execute if block ~-3 ~-3 ~-3 bedrock run function wither:wither/motionup

# Check directly above and below
    execute if block ~ ~3 ~ bedrock run function wither:wither/motiondown
    execute if block ~ ~-3 ~ bedrock run function wither:wither/motionup
    execute if block ~ ~4 ~ bedrock run function wither:wither/motiondown
    execute if block ~ ~-4 ~ bedrock run function wither:wither/motionup
    execute if block ~ ~5 ~ bedrock run function wither:wither/motiondown
    execute if block ~ ~6 ~ bedrock run function wither:wither/motiondown
    execute if block ~ ~7 ~ bedrock run function wither:wither/motiondown
    execute if block ~ ~8 ~ bedrock run function wither:wither/motiondown
    execute if block ~ ~9 ~ bedrock run function wither:wither/motiondown

schedule function wither:wither/unstuckbreak 5t
