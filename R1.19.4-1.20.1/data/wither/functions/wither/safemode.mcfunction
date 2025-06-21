# Executed 10 mins after the boss fight starts in case for some reason this doesn't get set to default when the fight ends
gamerule doFireTick true
execute if data storage wither:options {toggleweather:Enabled} run gamerule doDaylightCycle true