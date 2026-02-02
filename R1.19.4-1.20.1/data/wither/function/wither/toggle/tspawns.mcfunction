# ON
execute if data storage wither:options {togglespawns:Disabled} as @p run schedule function wither:wither/toggle/tspawnson 1t
execute if data storage wither:options {togglespawns:Disabled} run tellraw @s ["",{"text":"Wither Skeleton Spawns",bold:true,color:"#575757"},{"text":" have been ",color:"#575757"},{"text":"enabled!",color:"#13e800"}]

# OFF
execute if data storage wither:options {togglespawns:Enabled} as @p run schedule function wither:wither/toggle/tspawnsoff 1t
execute if data storage wither:options {togglespawns:Enabled} run tellraw @s ["",{"text":"Wither Skeleton Spawns",bold:true,color:"#575757"},{"text":" have been ",color:"#575757"},{"text":"disabled!",color:"#e80f00"}]

