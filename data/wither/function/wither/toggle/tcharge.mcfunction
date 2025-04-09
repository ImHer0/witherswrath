# ON
execute if data storage wither:options {togglecharge:0} as @p run schedule function wither:wither/toggle/tchargeon 1t
execute if data storage wither:options {togglecharge:0} run tellraw @s ["",{"text":"Charge Attack",bold:true,color:"#575757"},{"text":" has been ",color:"#575757"},{"text":"enabled!",color:"#13e800"}]

# OFF
execute if data storage wither:options {togglecharge:1} as @p run schedule function wither:wither/toggle/tchargeoff 1t
execute if data storage wither:options {togglecharge:1} run tellraw @s ["",{"text":"Charge Attack",bold:true,color:"#575757"},{"text":" has been ",color:"#575757"},{"text":"disabled!",color:"#e80f00"}]