# Ran as the Wither from process_damage when scaling is enabled
# Each extra player nearby gives the Wither +25% effective HP (max 8 players = 2.75x)
# Refund = damage * (players - 1) / (players + 3), worked out in tenths of HP

execute store result score #players wither.scale if entity @a[distance=..64,gamemode=!spectator]
execute if score #players wither.scale matches 9.. run scoreboard players set #players wither.scale 8
execute if score #players wither.scale matches ..1 run return 0

scoreboard players operation #refund wither.scale = @s wither.diff
scoreboard players operation #refund wither.scale *= #10 wither.scale
scoreboard players operation #num wither.scale = #players wither.scale
scoreboard players remove #num wither.scale 1
scoreboard players operation #refund wither.scale *= #num wither.scale
scoreboard players operation #den wither.scale = #players wither.scale
scoreboard players add #den wither.scale 3
scoreboard players operation #refund wither.scale /= #den wither.scale

# Give the refunded health back
execute store result score #hp wither.scale run data get entity @s Health 10
scoreboard players operation #hp wither.scale += #refund wither.scale
execute store result entity @s Health float 0.1 run scoreboard players get #hp wither.scale

# Only the part that wasn't refunded counts as damage dealt
scoreboard players operation #refund wither.scale /= #10 wither.scale
scoreboard players operation @s wither.diff -= #refund wither.scale
execute store result score @s wither.currentHealth run data get entity @s Health
