# WITHER CHARGE
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:entity.wither.break_block hostile @e[distance=..20,type=player] ~ ~ ~ 1 .3
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @e[type=minecraft:wither,limit=1,sort=nearest] run particle lava ~ ~ ~ 0.2 0.2 0.2 0 1
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @e[type=minecraft:wither,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {ReapplicationDelay:2,Radius:3f,RadiusPerTick:-.001f,RadiusOnUse:-.05f,Duration:200,potion_contents:{potion:"minecraft:wither",custom_color:0,custom_effects:[{id:"minecraft:wither",amplifier:2,duration:80,show_particles:0b}]}}
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s run tp @s ^ ^ ^1.4
execute as @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=wStand] at @s if score destroy wdestroy matches 1 unless block ^ ^ ^1 air run summon creeper ~ ~ ~ {Silent:1b,CustomNameVisible:0b,ExplosionRadius:4b,Fuse:0,ignited:1b,CustomName:'{"text":"The Wither\'s Charged Attack"}',attributes:[{id:"minecraft:generic.scale",base:0.0625}]}

