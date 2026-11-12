# Shows the best time when this fight didn't beat it
scoreboard players operation #bmin wither.stats = #best wither.stats
scoreboard players operation #bmin wither.stats /= #1200 wither.stats
scoreboard players operation #bsec wither.stats = #best wither.stats
scoreboard players operation #bsec wither.stats %= #1200 wither.stats
scoreboard players operation #bsec wither.stats /= #20 wither.stats

execute if score #bsec wither.stats matches 10.. run tellraw @a[tag=wither.fighter] ["",{"text":" Best: ","color":"gray"},{"score":{"name":"#bmin","objective":"wither.stats"},"color":"gold"},{"text":":","color":"gold"},{"score":{"name":"#bsec","objective":"wither.stats"},"color":"gold"}]
execute if score #bsec wither.stats matches ..9 run tellraw @a[tag=wither.fighter] ["",{"text":" Best: ","color":"gray"},{"score":{"name":"#bmin","objective":"wither.stats"},"color":"gold"},{"text":":0","color":"gold"},{"score":{"name":"#bsec","objective":"wither.stats"},"color":"gold"}]
