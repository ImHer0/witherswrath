
# ON
execute if data storage wither:options {toggletrophy:0} as @p run schedule function wither:wither/toggle/ttrophyon 1t
execute if data storage wither:options {toggletrophy:0} run tellraw @s ["",{"text":"Wither Trophy",bold:true,color:"#575757"},{"text":" has been ",color:"#575757"},{"text":"enabled!",color:"#13e800"}]

# OFF
execute if data storage wither:options {toggletrophy:1} as @p run schedule function wither:wither/toggle/ttrophyoff 1t
execute if data storage wither:options {toggletrophy:1} run tellraw @s ["",{"text":"Wither Trophy",bold:true,color:"#575757"},{"text":" has been ",color:"#575757"},{"text":"disabled!",color:"#e80f00"}]

