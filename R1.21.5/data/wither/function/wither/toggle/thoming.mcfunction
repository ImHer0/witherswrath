
# ON
execute if data storage wither:options {togglehoming:0} as @p run schedule function wither:wither/toggle/thomingon 1t
execute if data storage wither:options {togglehoming:0} run tellraw @s ["",{"text":"Wither Skull Homing",bold:true,color:"#575757"},{"text":" has been ",color:"#575757"},{"text":"enabled!",color:"#13e800"}]

# OFF
execute if data storage wither:options {togglehoming:1} as @p run schedule function wither:wither/toggle/thomingoff 1t
execute if data storage wither:options {togglehoming:1} run tellraw @s ["",{"text":"Wither Skull Homing",bold:true,color:"#575757"},{"text":" has been ",color:"#575757"},{"text":"disabled!",color:"#e80f00"}]

