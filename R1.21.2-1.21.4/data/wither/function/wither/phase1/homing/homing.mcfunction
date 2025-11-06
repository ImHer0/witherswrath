execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0.8
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run summon armor_stand ~ ~1.5 ~ {Team:"Wither",NoGravity:1b,Invulnerable:1b,Glowing:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Motion:[0.0,0.0,0.0],Tags:["hStand"],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:max_stack_size":1,"minecraft:profile":{name:"I;-1164118961,1323452832,-1226101614,-100966451",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTQ0NDE1ODI3N2EwYTk0YWVmZmZiYjQ0MjI4NTU1ZWU2ODc2OTZjYjFmNmY5YzdlZTdmM2IxZTdiZTE0ZTA5OCJ9fX0="}]}}}]}



function wither:wither/phase1/homing/homing5tick
function wither:wither/phase1/homing/homingtick
