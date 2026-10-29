# Position x1000 with eye height added (one NBT read instead of three)
data modify storage wither:aim pos set from entity @s Pos
execute store result score @s playerposX run data get storage wither:aim pos[0] 1000
execute store result score @s playerposY run data get storage wither:aim pos[1] 1000
scoreboard players add @s playerposY 1320
execute store result score @s playerposZ run data get storage wither:aim pos[2] 1000
