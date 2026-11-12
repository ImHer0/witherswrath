execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0.8
# The homing skull: a display entity so it moves smoothly; vanilla shows the player head,
# the resource pack swaps in a skull with flashing red/white eyes
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run summon minecraft:item_display ~ ~3.1 ~ {Team:"Wither",Tags:["hStand"],Glowing:1b,teleport_duration:1,item_display:"fixed",brightness:{sky:15,block:15},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-1164118961,1323452832,-1226101614,-100966451],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQ0NDE1ODI3N2EwYTk0YWVmZmZiYjQ0MjI4NTU1ZWU2ODc2OTZjYjFmNmY5YzdlZTdmM2IxZTdiZTE0ZTA5OCJ9fX0="}]},"minecraft:custom_model_data":{strings:["wither:homing_skull"]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]}}
function wither:wither/phase1/homing/homing5tick
function wither:wither/phase1/homing/homingtick
