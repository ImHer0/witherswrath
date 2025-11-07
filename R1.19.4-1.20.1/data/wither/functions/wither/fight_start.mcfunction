
# Checks gamerules

execute store result score mobGrf rules run gamerule mobGriefing
execute store result score fireTck rules run gamerule doFireTick
execute store result score cmdFbk rules run gamerule sendCommandFeedback
execute store result score dayCycl rules run gamerule doDaylightCycle
execute store result score count playerCount run execute if entity @e[type=player,distance=..100]

# FUNCTIONS
execute if score witherCount witherCount matches 1 run schedule function wither:wither_check 1t
execute if score witherCount witherCount matches 1 run schedule function wither:wither/fight_start/init 1t
execute if score witherCount witherCount matches 1 if data storage wither:options {toggleanimation:Default} run schedule function wither:wither/passive/skull 12s
execute if score witherCount witherCount matches 1 if data storage wither:options {toggleanimation:Default} run schedule function wither:wither/phase1/check_player_tick 12s
execute if score witherCount witherCount matches 1 if data storage wither:options {toggleanimation:Default} run schedule function wither:wither/fight_start/part 1t
execute if score witherCount witherCount matches 1 if data storage wither:options {togglehoming:Enabled} run schedule function wither:wither/phase2/homing/homingpre 10s
execute if score witherCount witherCount matches 1 if data storage wither:options {togglespawns:Enabled} run schedule function wither:wither/passive/spawn 15s
execute if score witherCount witherCount matches 1 run schedule function wither:wither/lifecycle/spawn 219t
execute if score witherCount witherCount matches 1 run schedule function wither:wither/unstuck/check 15s
execute if score witherCount witherCount matches 1 if data storage wither:options {toggleanimation:Default} run schedule function wither:wither/fight_start/tick 1t
execute if score witherCount witherCount matches 1 if data storage wither:options {toggleanimation:Bedrock} run schedule function wither:wither/fight_start/bedrock 1t
