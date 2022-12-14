execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 0.8
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run summon armor_stand ~ ~1.5 ~ {ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-486063810,-1533325354,-1397861042,-2147393798],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTFmNGY0ZGMzYjA5ODQ4MWQ4MTc1ZDg0ODkyYzE0NjM3ODU5YWNlNmI1MjQxN2Q0ZWRmZWRmNThlNmRiNTRmOSJ9fX0="}]}}}}],Tags:["hStand"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Glowing:1,Small:1b,Marker:1b}



function wither:wither/wither_homing5tick
function wither:wither/wither_homingtick