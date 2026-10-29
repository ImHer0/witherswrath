# Ran from lifecycle/spawn when the fight actually begins
# Starts the fight timer and clears the previous fight's numbers

execute store result score #start wither.stats run time query gametime

scoreboard players reset * wither.dmg
scoreboard players reset * wither.deaths
tag @a remove wither.fighter
tag @a remove wither.ranked

# Everyone near the Wither counts as a fighter (anyone who hits it later is added too)
execute at @e[type=minecraft:wither,limit=1,sort=nearest] run tag @a[distance=..100,gamemode=!spectator] add wither.fighter
scoreboard players set @a[tag=wither.fighter] wither.dmg 0
scoreboard players set @a[tag=wither.fighter] wither.deaths 0
