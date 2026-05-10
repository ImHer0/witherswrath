execute unless score count burstcount matches 5 run function wither:wither/skull/burst/launch_burst

execute unless score count burstcount matches 5 run schedule function wither:wither/skull/burst/launch_burst_loop 2t

execute if score count burstcount matches 5 run function wither:wither/skull/burst/launch_burst_loop_reset

