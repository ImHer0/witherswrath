execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0.8
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run summon armor_stand ~ ~1.5 ~ {Team:"Wither",NoGravity:1b,Invulnerable:1b,Glowing:1b,ShowArms:0b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,Motion:[0.0,0.0,0.0],Tags:["hStand"],ArmorItems:[{},{},{},{id:"minecraft:wither_skeleton_skull",Count:1,}]}



function wither:wither/phase2/homing/homing5tick
function wither:wither/phase2/homing/homingtick