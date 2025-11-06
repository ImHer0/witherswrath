
execute as @e[type=minecraft:wither,limit=1] run tag @s remove Bedrock
execute at @e[type=minecraft:wither,limit=1] run playsound minecraft:block.anvil.land player @e[type=minecraft:player,distance=..40] ~ ~ ~ 1 .4 1
execute as @e[type=minecraft:wither,limit=1] run data merge entity @e[type=wither,limit=1] {Tags:["bedrockdeath"],HasVisualFire:1b,Silent:1b,Glowing:1b,Health:1f,Attributes:[{Name:generic.max_health,Base:1000}]}
execute at @e[type=minecraft:wither,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["wither_stasis"],Invisible:1b,Invulnerable:1b,Marker:1b}


schedule clear wither:wither/phase2/dashes/dash
schedule clear wither:wither/phase2/charge/chargepre
schedule clear wither:wither/phase1/homing/homingpre


schedule function wither:wither/bedrock/death/deadbedrock1 1t

schedule function wither:wither/bedrock/death/deadbedrock1t 1t

schedule function wither:wither/bedrock/death/deadbedrockendloop 221t
