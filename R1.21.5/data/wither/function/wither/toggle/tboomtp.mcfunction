# ON
execute if data storage wither:options {toggleboomtp:0} as @p run schedule function wither:wither/toggle/tboomtpon 1t
execute if data storage wither:options {toggleboomtp:0} run tellraw @s ["",{"text":"First Phase Explosions",bold:true,color:"#575757"},{"text":" have been ",color:"#575757"},{"text":"enabled!",color:"#13e800"}]

# OFF
execute if data storage wither:options {toggleboomtp:1} as @p run schedule function wither:wither/toggle/tboomtpoff 1t
execute if data storage wither:options {toggleboomtp:1} run tellraw @s ["",{"text":"First Phase Explosions",bold:true,color:"#575757"},{"text":" have been ",color:"#575757"},{"text":"disabled!",color:"#e80f00"}]