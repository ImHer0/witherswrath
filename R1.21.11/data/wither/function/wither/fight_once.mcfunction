# A new Wither while the old fight's boss is nowhere to be found (it vanished where the pack couldn't see it go):
# close that fight first so this one starts properly instead of being a plain Wither
execute if score witherCount witherCount matches 1.. unless entity @e[type=minecraft:wither,tag=theWither,limit=1] run function wither:wither/lifecycle/abandon

# Removes Tag

execute as @e[type=minecraft:wither,tag=justSummoned] at @s run tag @s add theWither
execute as @e[type=minecraft:wither,tag=justSummoned] at @s run data merge entity @s {Invul:220}
execute as @e[type=minecraft:wither,tag=justSummoned] at @s run tag @s remove justSummoned



# Keeps count of how many withers are alive
execute if data storage wither:options {spawnreq:"Disabled"} as @s run scoreboard players add witherCount witherCount 1

execute if score witherCount witherCount matches 1 if data storage wither:options {spawnreq:"Disabled"} run function wither:wither/fight_start
execute if data storage wither:options {spawnreq:"Enabled"} as @a[distance=..50,predicate=wither:has_bad_omen] run tag @s add wrath_summoner
execute if entity @a[tag=wrath_summoner] as @s run scoreboard players add witherCount witherCount 1
# Spawn requirement on but no summoner: still count it while a fight is on so the duplicate check removes it
# (it used to count the boss a second time, leaving the counter one too high)
execute if data storage wither:options {spawnreq:"Enabled"} unless entity @a[tag=wrath_summoner] if entity @e[type=minecraft:wither,tag=Bedrock,limit=1] run scoreboard players add witherCount witherCount 1
execute if score witherCount witherCount matches 1 if data storage wither:options {spawnreq:"Enabled"} if entity @a[tag=wrath_summoner] run function wither:wither/fight_start
execute as @a[tag=wrath_summoner] run playsound minecraft:entity.wither.spawn master @a[distance=..100] ~ ~ ~ 1 0.1
execute as @a[tag=wrath_summoner] run effect clear @s minecraft:bad_omen
tag @a remove wrath_summoner

