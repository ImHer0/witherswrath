
# ON
execute if score destroy wdestroy matches 2 as @p run schedule function wither:wither/toggle/tdestructionon 1t
execute if score destroy wdestroy matches 2 run tellraw @s ["",{"text":"Destruction","bold":true,"color":"#575757"},{"text":" has been ","color":"#575757"},{"text":"enabled!","color":"#13e800"}]

# OFF
execute if score destroy wdestroy matches 1 as @p run schedule function wither:wither/toggle/tdestructionoff 1t
execute if score destroy wdestroy matches 1 run tellraw @s ["",{"text":"Destruction","bold":true,"color":"#575757"},{"text":" has been ","color":"#575757"},{"text":"disabled!","color":"#e80f00"}]