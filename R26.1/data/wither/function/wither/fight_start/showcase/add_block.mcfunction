# Takes the next block off the queue and tears it out of the ground into its ring slot
execute unless data storage wither:intro queue[0] run return 0
data modify storage wither:intro next set from storage wither:intro queue[0]
data remove storage wither:intro queue[0]


# Drawn down to just under the ground, however high the Wither has risen: y0 = ground - wither - 1.2 - disk height
execute store result score #wy wither.stats run data get entity @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] Pos[1] 100
execute store result score #gy wither.stats run data get entity @e[type=minecraft:marker,tag=wIntroCenter,limit=1] Pos[1] 100
scoreboard players operation #gy wither.stats -= #wy wither.stats
scoreboard players remove #gy wither.stats 120
execute store result score #dy wither.stats run data get storage wither:intro next.dy100
scoreboard players operation #gy wither.stats -= #dy wither.stats
execute store result storage wither:intro next.y0 double 0.01 run scoreboard players get #gy wither.stats

# Use the arena's own ground block when it's a known one (queued block is the fallback)
execute at @e[type=minecraft:marker,tag=wIntroCenter,limit=1] run function wither:wither/fight_start/showcase/ground_at with storage wither:intro next
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] run function wither:wither/fight_start/showcase/spawn_block with storage wither:intro next
execute at @e[type=minecraft:marker,tag=wIntroCenter,limit=1] run function wither:wither/fight_start/showcase/tear_fx with storage wither:intro next
