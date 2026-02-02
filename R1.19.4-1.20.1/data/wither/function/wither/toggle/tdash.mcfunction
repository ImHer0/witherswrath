# ON
execute if data storage wither:options {toggledash:Disabled} as @p run schedule function wither:wither/toggle/tdashon 1t
execute if data storage wither:options {toggledash:Disabled} run tellraw @s ["",{"text":"Dashes",bold:true,color:"#575757"},{"text":" have been ",color:"#575757"},{"text":"enabled!",color:"#13e800"}]

# OFF
execute if data storage wither:options {toggledash:Enabled} as @p run schedule function wither:wither/toggle/tdashoff 1t
execute if data storage wither:options {toggledash:Enabled} run tellraw @s ["",{"text":"Dashes",bold:true,color:"#575757"},{"text":" have been ",color:"#575757"},{"text":"disabled!",color:"#e80f00"}]
