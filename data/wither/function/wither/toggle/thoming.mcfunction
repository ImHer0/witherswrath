
# ON
execute if score wHoming whoming matches 2 as @p run schedule function wither:wither/toggle/thomingon 1t
execute if score wHoming whoming matches 2 run tellraw @s ["",{"text":"Wither Skull Homing","bold":true,"color":"#575757"},{"text":" has been ","color":"#575757"},{"text":"enabled!","color":"#13e800"}]

# OFF
execute if score wHoming whoming matches 1 as @p run schedule function wither:wither/toggle/thomingoff 1t
execute if score wHoming whoming matches 1 run tellraw @s ["",{"text":"Wither Skull Homing","bold":true,"color":"#575757"},{"text":" has been ","color":"#575757"},{"text":"disabled!","color":"#e80f00"}]

