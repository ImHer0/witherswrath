# Executed 20 mins after the boss fight starts in case for some reason this doesn't get set to default when the fight ends
execute if score fireTck rules matches 1 run gamerule fire_spread_radius_around_player 128
execute if score dayCycl rules matches 1 run gamerule advance_time true
execute if score mobGrf rules matches 1 run gamerule mob_griefing true