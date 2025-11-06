execute as @e[type=wither,limit=1,sort=nearest] at @s if data storage wither:options {Fuse:0} at @s run summon tnt ~ ~ ~
execute as @e[type=wither,limit=1,sort=nearest] at @s if data storage wither:options {toggledestruction:Enabled} at @s run particle minecraft:explosion_emitter

