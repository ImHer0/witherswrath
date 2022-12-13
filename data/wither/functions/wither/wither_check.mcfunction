execute if score @e[type=wither,sort=nearest,limit=1] Health < @e[type=wither,sort=furthest,limit=1] Health run kill @e[type=wither,sort=nearest,limit=1]
execute if score @e[type=wither,sort=nearest,limit=1] Health > @e[type=wither,sort=furthest,limit=1] Health run kill @e[type=wither,sort=furthest,limit=1]
kill @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star"}}]
schedule function wither:wither/wither_check1 1s
schedule clear wither:wither/wither_fight_start1 
schedule clear wither:wither/wither_start1

