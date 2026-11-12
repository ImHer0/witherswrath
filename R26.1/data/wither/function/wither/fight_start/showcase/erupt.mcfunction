# Soul sand bursts out of the ground at a random spot 3-9 blocks from the Wither
execute store result storage wither:intro e.yaw int 1 run random value 0..359
execute store result storage wither:intro e.dist int 1 run random value 3..9
execute at @e[type=minecraft:marker,tag=wIntroCenter,limit=1] run function wither:wither/fight_start/showcase/erupt_at with storage wither:intro e
