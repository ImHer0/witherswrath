# One leaderboard line, ran as the player being listed
tellraw @a[tag=wither.fighter] ["",{"text":"  #","color":"dark_gray"},{"score":{"name":"#rank","objective":"wither.stats"},"color":"dark_gray"},{"text":" "},{"selector":"@s","color":"white"},{"text":" - ","color":"dark_gray"},{"score":{"name":"@s","objective":"wither.dmg"},"color":"red"},{"text":" HP","color":"red"},{"text":" (","color":"dark_gray"},{"score":{"name":"@s","objective":"wither.deaths"},"color":"gray"},{"text":" deaths)","color":"dark_gray"}]
tag @s add wither.ranked
