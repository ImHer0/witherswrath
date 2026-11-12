# damages wither every time skeleton dies 
advancement revoke @s only wither:wither/defeated_skeleton
execute if data storage wither:options {toggleanimation:Bedrock} run return 0

damage @e[type=wither,sort=nearest,limit=1] 10 minecraft:arrow by @p from @p
