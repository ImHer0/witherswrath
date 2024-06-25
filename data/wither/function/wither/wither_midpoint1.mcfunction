# EFFECTS
data merge entity @e[type=minecraft:wither,limit=1,sort=nearest] {CustomName: '{"color":"#d7bfff","obfuscated":true,"text":"Wither"}', CustomNameVisible: 0b}
execute as @e[type=minecraft:wither,limit=1,sort=nearest] run fill ~-1 ~ ~-1 ~1 ~3 ~1 air replace
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run playsound minecraft:entity.wither.break_block master @a[distance=..30] ~ ~ ~ 2 .1 1
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:entity.wither_skeleton.hurt hostile @a[distance=..30] ~ ~ ~ 2 0.1 0.8
execute as @e[type=minecraft:wither,limit=1,sort=nearest] at @s run tp @s ~ ~.3 ~ ~30 ~