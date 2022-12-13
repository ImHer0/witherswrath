
# ON
execute if score witherTrophy wTrophy matches 2 run scoreboard players set witherTrophy wTrophy 1
execute if score witherTrophy wTrophy matches 2 run tellraw @s ["",{"text":"Wither Trophy","bold":true,"color":"#575757"},{"text":" has been ","color":"#575757"},{"text":"enabled!","color":"#13e800"}]

# OFF
execute if score witherTrophy wTrophy matches 1 run scoreboard players set witherTrophy wTrophy 2
execute if score witherTrophy wTrophy matches 1 run tellraw @s ["",{"text":"Wither Trophy","bold":true,"color":"#575757"},{"text":" has been ","color":"#575757"},{"text":"disabled!","color":"#e80f00"}]