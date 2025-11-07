
# ON
execute if data storage wither:options {toggleweather:Disabled} as @p run schedule function wither:wither/toggle/tweatheron 1t
execute if data storage wither:options {toggleweather:Disabled} run tellraw @s ["",{"text":"Weather","bold":true,"color":"#575757"},{"text":" has been ","color":"#575757"},{"text":"enabled!","color":"#13e800"}]

# OFF
execute if data storage wither:options {toggleweather:Enabled} as @p run schedule function wither:wither/toggle/tweatheroff 1t
execute if data storage wither:options {toggleweather:Enabled} run tellraw @s ["",{"text":"Weather","bold":true,"color":"#575757"},{"text":" has been ","color":"#575757"},{"text":"disabled!","color":"#e80f00"}]

