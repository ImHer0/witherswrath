advancement revoke @s only wither:wither/defeated_wither

schedule function wither:nether_star/main 1t

schedule function wither:wither/lifecycle/cleanup 5t

# A real kill: the vanished check must not fire before cleanup runs
scoreboard players set #lost wither.stats -1000

schedule function wither:stats/show 3s

