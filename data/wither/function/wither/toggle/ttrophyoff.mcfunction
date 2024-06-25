execute if score witherTrophy wTrophy matches 1 run tellraw @s ["",{"text":"Wither Trophy","bold":true,"color":"#575757"},{"text":" has been ","color":"#575757"},{"text":"disabled!","color":"#e80f00"}]
execute if score witherTrophy wTrophy matches 1 run scoreboard players set witherTrophy wTrophy 2

schedule function wither:config 2s