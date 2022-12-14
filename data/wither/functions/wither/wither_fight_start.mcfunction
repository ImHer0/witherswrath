# Ran by advancements for summoning the Wither
advancement revoke @s only wither:wither/summoned_wither

# stuff for the rest of the datapack to work
scoreboard objectives add Health dummy
scoreboard objectives add Health1 dummy
scoreboard objectives add wcharge dummy
scoreboard objectives add wcharge1 dummy
scoreboard objectives add wtime dummy
scoreboard objectives add smoke dummy
team add Wither
team modify Wither nametagVisibility never
scoreboard players set @e[type=minecraft:wither,limit=1,sort=nearest] smoke 1
scoreboard players set @e[type=minecraft:wither,limit=1,sort=nearest] wtime 2

# ASTHETICS
weather thunder
gamerule doFireTick false
gamerule doDaylightCycle
time set 22000t
stopsound @a music
playsound minecraft:music.nether.basalt_deltas music @a

# FUNCTIONS
schedule function wither:wither/wither_fight_start1 1t
schedule function wither:wither/wither_skull 10s
schedule function wither:wither/wither_homingpre 10s
schedule function wither:wither/wither_spawn 15s
schedule function wither:wither/wither_start1 219t
schedule function wither:wither/wither_unstuck 15s
schedule function wither:wither/wither_safemode 1200s
