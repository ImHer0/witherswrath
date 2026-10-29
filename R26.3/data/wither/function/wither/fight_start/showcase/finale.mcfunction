# Last burst and cleanup (the Wither's own spawn explosion follows right after)
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] run particle minecraft:soul_fire_flame ~ ~1.5 ~ 0.4 0.6 0.4 0.25 60 normal
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] run particle minecraft:block{block_state:"minecraft:soul_sand"} ~ ~1.5 ~ 0.6 0.6 0.6 0.3 40 normal
kill @e[tag=wIntro]
schedule clear wither:wither/fight_start/showcase/loop
