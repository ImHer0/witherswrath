# Removes Tag

execute as @e[type=minecraft:wither,tag=justSummoned] at @s run tag @s add theWither
execute as @e[type=minecraft:wither,tag=justSummoned] at @s run data merge entity @s {Invul:220}
execute as @e[type=minecraft:wither,tag=justSummoned] at @s run tag @s remove justSummoned



# Keeps count of how many withers are alive
execute if data storage wither:options {spawnreq:"Disabled"} as @s run scoreboard players add witherCount witherCount 1

execute if score witherCount witherCount matches 1 if data storage wither:options {spawnreq:"Disabled"} run function wither:wither/fight_start
execute if data storage wither:options {spawnreq:"Enabled"} as @a[distance=..50,nbt={active_effects:[{id:"minecraft:bad_omen"}]}] run tag @s add wrath_summoner
execute if entity @a[tag=wrath_summoner] as @s run scoreboard players add witherCount witherCount 1
execute if entity @e[tag=Wither,limit=1,type=minecraft:wither] as @s run scoreboard players add witherCount witherCount 1
execute if score witherCount witherCount matches 1 if data storage wither:options {spawnreq:"Enabled"} if entity @a[tag=wrath_summoner] run function wither:wither/fight_start
execute as @a[tag=wrath_summoner] run playsound minecraft:entity.wither.spawn master @a[distance=..100] ~ ~ ~ 1 0.1
execute as @a[tag=wrath_summoner] run effect clear @s minecraft:bad_omen
tag @a remove wrath_summoner

