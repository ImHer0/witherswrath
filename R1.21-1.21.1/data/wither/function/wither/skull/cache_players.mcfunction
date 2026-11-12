# Caches player positions once, so each skull doesn't read player NBT itself
execute at @e[type=minecraft:wither,limit=1,sort=nearest] as @a[distance=..128,gamemode=!spectator] run function wither:wither/skull/cache_player
