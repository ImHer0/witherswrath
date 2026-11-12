# Ran every 5 ticks: variant abilities and particles
# Fireballs (Magus and blazes) knocked off course keep flying forever: remove any that are nowhere near a player
execute as @e[type=minecraft:small_fireball] at @s unless entity @a[distance=..48] run kill @s

execute unless entity @e[tag=wVariant,limit=1] run return 0

# Magus: Slowness aura (Weakness made fists and tools do 0 damage), and the blaze-style fireball attack
execute as @e[type=minecraft:wither_skeleton,tag=wHex] at @s run effect give @a[distance=..4,gamemode=!spectator] minecraft:slowness 2 0 false
execute as @e[type=minecraft:wither_skeleton,tag=wHex] at @s run function wither:wither/passive/variants/magus_step

# Soul Archer: soul wisps
execute at @e[type=minecraft:wither_skeleton,tag=wArcherV] run particle minecraft:soul ~ ~1.5 ~ 0.25 0.4 0.25 0.01 1 normal

# Triskull: like the Wither, one skull from the middle head, then each side head (every 3s)
execute as @e[type=minecraft:wither_skeleton,tag=wTriskull] run scoreboard players add @s wither.variant 1
execute as @e[type=minecraft:wither_skeleton,tag=wTriskull,scores={wither.variant=12..}] at @s unless entity @a[distance=4..20,gamemode=!spectator] run scoreboard players set @s wither.variant 11
execute as @e[type=minecraft:wither_skeleton,tag=wTriskull,scores={wither.variant=12}] at @s run function wither:wither/passive/variants/triskull_shot_center
execute as @e[type=minecraft:wither_skeleton,tag=wTriskull,scores={wither.variant=13}] at @s run function wither:wither/passive/variants/triskull_shot_left
execute as @e[type=minecraft:wither_skeleton,tag=wTriskull,scores={wither.variant=14..}] at @s run function wither:wither/passive/variants/triskull_shot_right

# Shade Reaper: teleports 3-5 blocks around a player every 6s
execute as @e[type=minecraft:wither_skeleton,tag=wReaper] run scoreboard players add @s wither.variant 1
execute as @e[type=minecraft:wither_skeleton,tag=wReaper,scores={wither.variant=24..}] at @s if entity @a[distance=4..16,gamemode=!spectator] run function wither:wither/passive/variants/reaper_blink
execute at @e[type=minecraft:wither_skeleton,tag=wReaper] run particle minecraft:smoke ~ ~0.2 ~ 0.2 0.1 0.2 0 2 normal

# Death Rider: dust trail behind Nightmare, which crumbles once it has no rider
execute at @e[type=minecraft:skeleton_horse,tag=wSteed] run particle minecraft:dust{color:[0.24,0.22,0.2],scale:1.4} ~ ~0.1 ~ 0.4 0.02 0.4 0 6 normal
execute at @e[type=minecraft:skeleton_horse,tag=wSteed] run particle minecraft:ash ~ ~0.2 ~ 0.5 0.1 0.5 0 4 normal
execute as @e[type=minecraft:skeleton_horse,tag=wSteed] unless predicate wither:has_rider at @s run function wither:wither/passive/variants/steed_crumble
