# ON
execute if data storage wither:options {toggletrophy:Disabled} as @p run schedule function wither:wither/toggle/ttrophyon 1t
execute if data storage wither:options {toggletrophy:Disabled} run tellraw @s ["",{"text":"Wither Trophy",bold:true,color:"#575757"},{"text":" has been ",color:"#575757"},{"text":"enabled!",color:"#13e800"}]

# OFF
execute if data storage wither:options {toggletrophy:Enabled} as @p run schedule function wither:wither/toggle/ttrophyoff 1t
execute if data storage wither:options {toggletrophy:Enabled} run tellraw @s ["",{"text":"Wither Trophy",bold:true,color:"#575757"},{"text":" has been ",color:"#575757"},{"text":"disabled!",color:"#e80f00"}]

