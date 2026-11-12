# Macro: x, y, z (the fight Wither's last spot). It's not around: if that spot is loaded and a player is close by,
# it really is gone (not just unloaded with the chunk). Three checks in a row (15 ticks) before giving up on it
$execute if loaded $(x) 0 $(z) positioned $(x) $(y) $(z) if entity @a[distance=..64,gamemode=!spectator] run scoreboard players add #lost wither.stats 1
execute if score #lost wither.stats matches 3.. run function wither:wither/lifecycle/vanished with storage wither:fight last
