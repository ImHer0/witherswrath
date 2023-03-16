execute if score witherTrophy wTrophy matches 2 run tellraw @s ["",{"text":"Wither Trophy","bold":true,"color":"#575757"},{"text":" has been ","color":"#575757"},{"text":"enabled!","color":"#13e800"}]
execute if score witherTrophy wTrophy matches 2 run scoreboard players set witherTrophy wTrophy 1

schedule function wither:config 2s