advancement revoke @s only wither:wither/defeated_wither

schedule function wither:nether_star/main 1t

schedule function wither:wither/lifecycle/cleanup 5t

# A real kill: the vanished check must not fire before cleanup runs
scoreboard players set #lost wither.stats -1000
# A real kill: the stuck-fight check must not run Fix after cleanup (that would also cancel the fight report)
schedule clear wither:wither_check
scoreboard players set witherCheck witherCheck 0

schedule function wither:stats/show 3s

