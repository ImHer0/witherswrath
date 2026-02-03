# Executed 20 mins after the boss fight starts in case for some reason this doesn't get set to default when the fight ends
execute if score fireTck rules matches 1 run gamerule doFireTick true
execute if score dayCycl rules matches 1 run gamerule doDaylightCycle true
execute if score mobGrf rules matches 1 run gamerule mobGriefing true