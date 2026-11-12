# Ran as the target player: picks a random spot, up to 4 tries
scoreboard players add #tries wither.scale 1
execute store result storage wither:aim blink.yaw int 1 run random value 0..359
execute store result storage wither:aim blink.dist int 1 run random value 3..5
function wither:wither/passive/variants/reaper_spot with storage wither:aim blink
execute if score #ok wither.scale matches 0 if score #tries wither.scale matches ..3 run function wither:wither/passive/variants/reaper_try
