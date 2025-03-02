
execute as @e[type=minecraft:wither,limit=1] run tag @s remove Bedrock
execute as @e[type=minecraft:wither,limit=1] run data merge entity @e[type=wither,limit=1] {Tags:["bedrockdeath"],HasVisualFire:1b,Silent:1b,Glowing:1b,Health:1f,attributes:[{id:"minecraft:max_health",base:1000}]}
execute at @e[type=minecraft:wither,limit=1] run summon minecraft:armor_stand ~ ~ ~ {Tags:["wither_stasis"],Invisible:1b,Invulnerable:1b,Marker:1b}


schedule clear wither:wither/dashes/dash
schedule clear wither:wither/charge/chargepre
schedule clear wither:wither/homing/homingpre


schedule function wither:wither/bedrock/death/deadbedrock1 1t

schedule function wither:wither/bedrock/death/deadbedrock1t 3t
schedule function wither:wither/bedrock/death/deadbedrock2t 5t
schedule function wither:wither/bedrock/death/deadbedrock3t 7t
schedule function wither:wither/bedrock/death/deadbedrock4t 9t

schedule function wither:wither/bedrock/death/deadbedrockendloop 10s