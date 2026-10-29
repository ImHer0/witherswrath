# Ran 3s after the Wither dies: fight report, best time and challenge advancements

# FIGHT TIME (ticks -> m:ss)
execute store result score #time wither.stats run time query gametime
scoreboard players operation #time wither.stats -= #start wither.stats
scoreboard players operation #min wither.stats = #time wither.stats
scoreboard players operation #min wither.stats /= #1200 wither.stats
scoreboard players operation #sec wither.stats = #time wither.stats
scoreboard players operation #sec wither.stats %= #1200 wither.stats
scoreboard players operation #sec wither.stats /= #20 wither.stats

# TOTAL DEATHS
scoreboard players set #deaths wither.stats 0
execute as @a[tag=wither.fighter] run scoreboard players operation #deaths wither.stats += @s wither.deaths

# HEADER
tellraw @a[tag=wither.fighter] ""
tellraw @a[tag=wither.fighter] ["",{"text":"[ᴡɪᴛʜᴇʀ'ꜱ ᴡʀᴀᴛʜ] ","bold":true,"color":"#322A32"},{"text":"ꜰɪɢʜᴛ ʀᴇᴘᴏʀᴛ","bold":true,"color":"#8F09CE"}]
execute if score #sec wither.stats matches 10.. run tellraw @a[tag=wither.fighter] ["",{"text":" Time: ","color":"gray"},{"score":{"name":"#min","objective":"wither.stats"},"color":"white"},{"text":":","color":"white"},{"score":{"name":"#sec","objective":"wither.stats"},"color":"white"},{"text":"   Deaths: ","color":"gray"},{"score":{"name":"#deaths","objective":"wither.stats"},"color":"white"}]
execute if score #sec wither.stats matches ..9 run tellraw @a[tag=wither.fighter] ["",{"text":" Time: ","color":"gray"},{"score":{"name":"#min","objective":"wither.stats"},"color":"white"},{"text":":0","color":"white"},{"score":{"name":"#sec","objective":"wither.stats"},"color":"white"},{"text":"   Deaths: ","color":"gray"},{"score":{"name":"#deaths","objective":"wither.stats"},"color":"white"}]

# BEST TIME (kept across fights, cleared by uninstall)
execute unless score #best wither.stats matches 1.. run scoreboard players operation #best wither.stats = #time wither.stats
execute if score #time wither.stats < #best wither.stats run scoreboard players operation #best wither.stats = #time wither.stats
execute if score #time wither.stats = #best wither.stats run tellraw @a[tag=wither.fighter] ["",{"text":" ★ New best time!","bold":true,"color":"gold"}]
execute if score #time wither.stats > #best wither.stats run function wither:stats/best_line

# DAMAGE LEADERBOARD
tellraw @a[tag=wither.fighter] {"text":" Damage dealt:","color":"gray"}
scoreboard players set #rank wither.stats 0
function wither:stats/rank_loop
tellraw @a[tag=wither.fighter] ""

# CHALLENGES
execute if score #time wither.stats matches ..5999 run advancement grant @a[tag=wither.fighter] only wither:wither/swift_wrath
execute if score #deaths wither.stats matches 0 run advancement grant @a[tag=wither.fighter] only wither:wither/untouchable

tag @a remove wither.ranked
tag @a remove wither.fighter
