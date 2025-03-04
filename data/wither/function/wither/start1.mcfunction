# spawn Purge

execute as @e[type=minecraft:wither] at @s if data storage wither:options {toggleanimation:0} run summon creeper ~ ~ ~ {Silent:1b,Invulnerable:1b,CustomNameVisible:0b,ExplosionRadius:13b,Fuse:1,ignited:1b,CustomName:'{"text":"The Wither\'s Wrath"}'}
execute as @e[type=minecraft:wither] at @s if data storage wither:options {toggleanimation:0} run particle minecraft:explosion_emitter ~ ~ ~ 0 1 0 0.6 6 force
execute as @e[type=minecraft:wither] at @s if data storage wither:options {toggleanimation:0} run particle minecraft:campfire_signal_smoke ~ ~ ~ 0 1 0 0.6 300 force
execute as @e[type=minecraft:wither] at @s if data storage wither:options {toggleanimation:0} run particle minecraft:lava ~ ~ ~ 3 3 3 0.1 200 force
scoreboard players set wspawn spawn 0
execute as @e[type=player] run attribute @s minecraft:gravity modifier remove 1


# End loops etc

execute if data storage wither:options {toggleanimation:2} at @e[type=wither,limit=1] run playsound minecraft:entity.generic.explode hostile @e[type=player,distance=..50] ~ ~ ~ 1 1
kill @e[type=armor_stand,tag=wither_spin,limit=1]
schedule clear wither:wither/fight_start_bedrock1t
schedule clear wither:wither/fight_startpart

schedule function wither:wither/musicphase1 1t