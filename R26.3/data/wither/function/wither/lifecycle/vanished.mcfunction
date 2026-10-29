# Macro: x, y, z. The fight Wither vanished without a player killing it: end the fight quietly (no rewards)
scoreboard players set #lost wither.stats 0
$execute positioned $(x) $(y) $(z) run kill @e[tag=wSkel,distance=..128]
$execute positioned $(x) $(y) $(z) run kill @e[tag=wArcher,distance=..128]
$execute positioned $(x) $(y) $(z) run kill @e[tag=wither_dash,distance=..128]
$execute positioned $(x) $(y) $(z) run kill @e[type=minecraft:item_display,tag=hStand,distance=..128]
$execute positioned $(x) $(y) $(z) run kill @e[type=minecraft:armor_stand,tag=chargew,distance=..128]
kill @e[type=minecraft:armor_stand,tag=midpointpos]
kill @e[type=minecraft:armor_stand,tag=wStand]
execute as @a run attribute @s minecraft:gravity modifier remove 1
stopsound @a record
$tellraw @a[x=$(x),y=$(y),z=$(z),distance=..128] ["",{"text":"[ᴡɪᴛʜᴇʀ'ꜱ ᴡʀᴀᴛʜ] ","bold":true,"color":"#322A32"},{"text":"The Wither has vanished...","color":"#8F09CE"}]
schedule clear wither:wither_check
scoreboard players set witherCheck witherCheck 0
function wither:wither/lifecycle/cleanup
