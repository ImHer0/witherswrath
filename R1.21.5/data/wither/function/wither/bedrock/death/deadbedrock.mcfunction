
execute as @e[type=minecraft:wither,limit=1] run tag @s remove Bedrock
execute at @e[type=minecraft:wither,limit=1] run playsound minecraft:block.anvil.land player @e[type=minecraft:player,distance=..40] ~ ~ ~ 1 .4 0.4
execute as @e[type=minecraft:wither,limit=1] run data merge entity @e[type=wither,limit=1] {Tags:["bedrockdeath"],HasVisualFire:1b,Silent:1b,Glowing:1b,Health:1f,attributes:[{id:"minecraft:max_health",base:1000},{id:"minecraft:armor",base:30},{id:"minecraft:armor_toughness",base:20}]}
execute at @e[type=minecraft:wither,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["wither_stasis"],Invisible:1b,Invulnerable:1b,Marker:1b}


schedule clear wither:wither/phase2/dashes/dash
schedule clear wither:wither/phase2/charge/chargepre
schedule clear wither:wither/phase1/homing/homingpre
schedule clear wither:wither/passive/spawn


schedule function wither:wither/bedrock/death/deadbedrock1 1t

schedule function wither:wither/bedrock/death/deadbedrock1t 1t

schedule function wither:wither/bedrock/death/deadbedrockendloop 221t
