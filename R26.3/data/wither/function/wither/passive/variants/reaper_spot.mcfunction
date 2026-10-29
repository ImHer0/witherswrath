# Macro: yaw, dist. Needs room to stand and solid ground below
$execute at @s rotated $(yaw) 0 positioned ^ ^ ^$(dist) if block ~ ~ ~ #wither:passable if block ~ ~1 ~ #wither:passable unless block ~ ~-1 ~ #wither:passable run function wither:wither/passive/variants/reaper_arrive
