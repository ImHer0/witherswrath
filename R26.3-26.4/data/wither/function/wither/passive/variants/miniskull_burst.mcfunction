# Small skull detonates: a mini explosion that hurts players within ~1.8 blocks
# (particles and damage only, so it never breaks blocks or lags like a real explosion)
# Fast skull: 5 damage + Wither I 3s. Slow pale skull: 7 damage + Wither II 4s
tag @s add wBursting
data modify storage wither:aim hit set value {dmg:5,wsec:3,wamp:0}
execute if entity @s[tag=wMiniSlow] run data modify storage wither:aim hit set value {dmg:7,wsec:4,wamp:1}
execute positioned ~ ~-1 ~ as @a[distance=..1.8,gamemode=!spectator] run function wither:wither/passive/variants/miniskull_damage with storage wither:aim hit

particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.2 0.05 12 normal
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.04 6 normal
playsound minecraft:entity.generic.explode hostile @a[distance=..24] ~ ~ ~ 0.5 1.6
kill @s
