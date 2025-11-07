scoreboard players set count burstcount 0


execute if entity @e[type=wither,scores={Health=300..600}] run schedule function wither:wither/skull/burst/launch_burst_loop 5s
execute if entity @e[type=wither,scores={Health=10..299}] run schedule function wither:wither/skull/burst/launch_burst_loop 20s