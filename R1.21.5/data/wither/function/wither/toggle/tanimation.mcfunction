# ON
execute if data storage wither:options {toggleanimation:0} run tellraw @s ["",{"text":"Default Animations",bold:true,color:"#575757"},{"text":" have been ",color:"#575757"},{"text":"enabled!",color:"#13e800"}]

# OFF
execute if data storage wither:options {toggleanimation:1} run tellraw @s ["",{"text":"Animations",bold:true,color:"#575757"},{"text":" have been ",color:"#575757"},{"text":"disabled!",color:"#e80f00"}]

# BEDROCK
execute if data storage wither:options {toggleanimation:2} run tellraw @s ["",{"text":"Bedrock Animations",bold:true,color:"#575757"},{"text":" have been ",color:"#575757"},{"text":"enabled!",color:"#13e800"}]