# spawn Purge

execute as @e[type=minecraft:wither] at @s if data storage wither:options {toggleanimation:Default} run summon creeper ~ ~ ~ {Team:"Wither",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,ExplosionRadius:13b,Fuse:1,ignited:1b,CustomName:'{"text":"the Wither\'s Wrath"}'}
execute as @e[type=minecraft:wither] at @s if data storage wither:options {toggleanimation:Default} run particle minecraft:explosion_emitter ~ ~ ~ 0 1 0 0.6 6 force
execute as @e[type=minecraft:wither] at @s if data storage wither:options {toggleanimation:Default} run particle minecraft:campfire_signal_smoke ~ ~ ~ 0 1 0 0.6 300 force
execute as @e[type=minecraft:wither] at @s if data storage wither:options {toggleanimation:Default} run particle minecraft:lava ~ ~ ~ 3 3 3 0.1 200 force
scoreboard players set wspawn spawn 0



# End loops etc

execute if data storage wither:options {toggleanimation:Bedrock} at @e[type=wither,limit=1] run playsound minecraft:entity.generic.explode hostile @e[type=player,distance=..50] ~ ~ ~ 1 1
kill @e[type=armor_stand,tag=wither_spin,limit=1]
schedule clear wither:wither/fight_start/bedrock_1t
schedule clear wither:wither/fight_start/part

schedule function wither:wither/phase1/musicphase1 1t