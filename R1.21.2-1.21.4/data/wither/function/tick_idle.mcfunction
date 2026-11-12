# Ran once when no fight is active (not every tick)
schedule clear wither:wither/phase2/charge/chargepre
schedule clear wither:wither/phase1/homing/homingpre
schedule clear wither:wither/passive/spawn
scoreboard players set #idle wither.stats 1
