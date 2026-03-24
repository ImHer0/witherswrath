# ON
execute if data storage wither:options {toggledestruction:Disabled} as @s run schedule function wither:wither/toggle/tdestructionon 1t
execute if data storage wither:options {toggledestruction:Disabled} run tellraw @s ["",{"text":"Destruction",bold:true,color:"#575757"},{"text":" has been ",color:"#575757"},{"text":"enabled!",color:"#13e800"}]

# OFF
execute if data storage wither:options {toggledestruction:Enabled} as @s run schedule function wither:wither/toggle/tdestructionoff 1t
execute if data storage wither:options {toggledestruction:Enabled} run tellraw @s ["",{"text":"Destruction",bold:true,color:"#575757"},{"text":" has been ",color:"#575757"},{"text":"disabled!",color:"#e80f00"}]
