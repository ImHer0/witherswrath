
# ON
execute if data storage wither:options {togglespawns:0} as @p run schedule function wither:wither/toggle/tspawnson 1t
execute if data storage wither:options {togglespawns:0} run tellraw @s ["",{"text":"Wither Skeleton Spawns",bold:true,color:"#575757"},{"text":" have been ",color:"#575757"},{"text":"enabled!",color:"#13e800"}]

# OFF
execute if data storage wither:options {togglespawns:1} as @p run schedule function wither:wither/toggle/tspawnsoff 1t
execute if data storage wither:options {togglespawns:1} run tellraw @s ["",{"text":"Wither Skeleton Spawns",bold:true,color:"#575757"},{"text":" have been ",color:"#575757"},{"text":"disabled!",color:"#e80f00"}]

