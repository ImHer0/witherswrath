execute as @e[type=wither,limit=1,sort=nearest] at @s if data storage wither:options {toggledestruction:Enabled} at @s run summon tnt ~ ~ ~ {Team:"Wither",fuse:0}
execute as @e[type=wither,limit=1,sort=nearest] at @s if data storage wither:options {toggledestruction:Enabled} at @s run particle minecraft:explosion_emitter
