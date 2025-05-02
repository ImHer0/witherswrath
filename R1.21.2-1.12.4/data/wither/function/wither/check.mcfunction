execute at @p as @e[type=minecraft:wither,limit=1,sort=nearest] if score @s checkHealth < @e[type=minecraft:wither,limit=1,sort=furthest] checkHealth run kill @s
execute at @p as @e[type=minecraft:wither,limit=1,sort=furthest] if score @s checkHealth < @e[type=minecraft:wither,limit=1,sort=nearest] checkHealth run kill @s


kill @e[type=item,sort=nearest,nbt={Item: {id: "minecraft:nether_star"}}]


function wither:wither/check1