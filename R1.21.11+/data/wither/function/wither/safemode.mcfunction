# Executed 10 mins after the boss fight starts in case for some reason this doesn't get set to default when the fight ends
execute if data storage wither:options {toggleweather:Enabled} if score dayCycl rules matches 1 run gamerule advance_time true
