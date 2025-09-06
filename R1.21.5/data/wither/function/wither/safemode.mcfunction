# Executed 10 mins after the boss fight starts in case for some reason this doesn't get set to default when the fight ends
execute if score fireTck rules matches 1 run gamerule doFireTick true
execute if data storage wither:options {toggleweather:Enabled} if score dayCycl rules matches 1 run gamerule doDaylightCycle true