execute if score wHoming whoming matches 2 run tellraw @s ["",{"text":"Wither Skull Homing","bold":true,"color":"#575757"},{"text":" has been ","color":"#575757"},{"text":"enabled!","color":"#13e800"}]
execute if score wHoming whoming matches 2 run scoreboard players set wHoming whoming 1

schedule function wither:config 2s