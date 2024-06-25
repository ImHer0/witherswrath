
execute at @e[type=wither,limit=1,sort=nearest] run give @e[type=player,limit=1,sort=nearest] wither_skeleton_skull 3
scoreboard players remove witherCount witherCount 1

schedule clear wither:wither/wither_fight_start1
schedule clear wither:wither/wither_start1

