# Bedrock mode: at half health the Wither slams down, blows up and calls in 3 Wither Skeletons (Normal and Hard)
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1] if data storage wither:options {toggledestruction:Enabled} run summon minecraft:creeper ~ ~ ~ {Team:"Wither",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,ExplosionRadius:7b,Fuse:1,ignited:1b,CustomName:"the Wither's Wrath"}
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1] run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 normal
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1] run playsound minecraft:entity.generic.explode hostile @a[distance=..64] ~ ~ ~ 2 0.8
# The skeletons come in after the blast, so it can't kill them
schedule function wither:wither/midpoint/midpointbedrock_skeletons 5t
