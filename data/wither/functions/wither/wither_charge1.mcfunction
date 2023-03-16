# WITHER CHARGE
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:entity.wither.break_block hostile @e[distance=..20,type=player] ~ ~ ~ 1 .3
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @e[type=minecraft:wither,limit=1,sort=nearest] run particle lava ~ ~ ~ 0.2 0.2 0.2 0 1
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @e[type=minecraft:wither,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {CustomName: "", CustomNameVisible: 1, Radius: 2f, Duration: 10, RadiusOnUse: -0.01f, RadiusPerTick: -0.0002f, ReapplicationDelay: 5, Effects: [{Duration: 60, Id: 20, Amplifier: 2b}]}
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s run tp @s ^ ^ ^1.4
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s if score destroy wdestroy matches 1 unless block ^ ^ ^1 air run summon minecraft:creeper ~ ~ ~ {CustomName: '"The Wither\'s Last Stance"', ExplosionRadius: 4, Invulnerable: 1, Fuse: 1, ignited: 1, Silent: 1}
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s if score destroy wdestroy matches 1 unless block ^ ^ ^1 minecraft:bedrock unless block ^ ^ ^1 minecraft:obsidian unless block ^ ^ ^1 deepslate run fill ~-2 ~ ~-2 ~2 ~4 ~2 air destroy
