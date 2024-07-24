execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s rotated ~ 0 if block ~ ~-0.5 ~ water run data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {Motion:[0.0,8.0,0.0]}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s rotated ~ 0 if block ~ ~0.5 ~ water run data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {Motion:[0.0,8.0,0.0]}

# Check 1 block radius in all directions (including corners)
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~1 ~1 ~ bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~1 ~-1 ~ bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~1 ~ ~1 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~1 ~ ~-1 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~1 ~1 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~1 ~-1 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~-1 ~1 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~-1 ~-1 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~1 ~1 ~1 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~1 ~1 ~-1 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~1 ~-1 ~1 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~1 ~-1 ~-1 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~-1 ~1 ~1 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~-1 ~1 ~-1 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~-1 ~-1 ~1 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~-1 ~-1 ~-1 bedrock run function wither:wither/wither_motionup

# Check directly above and below
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~1 ~ bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~-1 ~ bedrock run function wither:wither/wither_motionup

# Check 2 blocks radius in all directions (including corners)
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~2 ~2 ~ bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~2 ~-2 ~ bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~2 ~ ~2 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~2 ~ ~-2 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~2 ~2 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~2 ~-2 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~-2 ~2 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~-2 ~-2 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~2 ~2 ~2 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~2 ~2 ~-2 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~2 ~-2 ~2 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~2 ~-2 ~-2 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~-2 ~2 ~2 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~-2 ~2 ~-2 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~-2 ~-2 ~2 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~-2 ~-2 ~-2 bedrock run function wither:wither/wither_motionup

# Check directly above and below
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~2 ~ bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~-2 ~ bedrock run function wither:wither/wither_motionup

# Check 3 blocks radius in all directions (including corners)
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~3 ~3 ~ bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~3 ~-3 ~ bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~3 ~ ~3 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~3 ~ ~-3 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~3 ~3 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~3 ~-3 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~-3 ~3 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~-3 ~-3 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~3 ~3 ~3 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~3 ~3 ~-3 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~3 ~-3 ~3 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~3 ~-3 ~-3 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~-3 ~3 ~3 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~-3 ~3 ~-3 bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~-3 ~-3 ~3 bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~-3 ~-3 ~-3 bedrock run function wither:wither/wither_motionup

# Check directly above and below
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~3 ~ bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~-3 ~ bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~4 ~ bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~-4 ~ bedrock run function wither:wither/wither_motionup
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~5 ~ bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~6 ~ bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~7 ~ bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~8 ~ bedrock run function wither:wither/wither_motiondown
    execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s if block ~ ~9 ~ bedrock run function wither:wither/wither_motiondown

execute run schedule function wither:wither/wither_unstuck 2t
execute run schedule function wither:wither/wither_unstuckbreak 38t
