# Ran as/at a Shade Reaper: teleports 3-5 blocks from the nearest player, in a random direction
scoreboard players set @s wither.variant 0
tag @s add wBlinking
scoreboard players set #tries wither.scale 0
scoreboard players set #ok wither.scale 0
execute as @p[distance=4..16,gamemode=!spectator] run function wither:wither/passive/variants/reaper_try
tag @s remove wBlinking
