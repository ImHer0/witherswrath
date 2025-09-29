
# Checks gamerules

execute store result score mobGrf rules run gamerule mobGriefing
execute store result score fireTck rules run gamerule doFireTick
execute store result score cmdFbk rules run gamerule sendCommandFeedback
execute store result score dayCycl rules run gamerule doDaylightCycle

# FUNCTIONS
execute if score witherCount witherCount matches 1 run schedule function wither:wither_check 1t
execute if score witherCount witherCount matches 1 run schedule function wither:wither_check 1t
execute if score witherCount witherCount matches 1 run schedule function wither:wither/fight_start1 1t
execute if score witherCount witherCount matches 1 run schedule function wither:wither/skull 10s
execute if score witherCount witherCount matches 1 run schedule function wither:wither/launchskull 22s
execute if score witherCount witherCount matches 1 run schedule function wither:wither/fight_startpart 1t
execute if score witherCount witherCount matches 1 if data storage wither:options {togglehoming:Enabled} run schedule function wither:wither/homing/homingpre 10s
execute if score witherCount witherCount matches 1 if data storage wither:options {togglespawns:Enabled} run schedule function wither:wither/spawn 15s
execute if score witherCount witherCount matches 1 run schedule function wither:wither/start1 219t
execute if score witherCount witherCount matches 1 run schedule function wither:wither/unstuck 15s
execute if score witherCount witherCount matches 1 if data storage wither:options {toggleanimation:Default} run schedule function wither:wither/fight_starttick 1t
execute if score witherCount witherCount matches 1 if data storage wither:options {toggleanimation:Bedrock} run schedule function wither:wither/fight_start_bedrock 1t
execute if score witherCount witherCount matches 1 run schedule function wither:wither/unstuck 15s
execute if score witherCount witherCount matches 1 if data storage wither:options {toggleanimation:Default} run schedule function wither:wither/fight_starttick 1t
execute if score witherCount witherCount matches 1 if data storage wither:options {toggleanimation:Bedrock} run schedule function wither:wither/fight_start_bedrock 1t
