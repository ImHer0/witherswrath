# Failsafe function - clears all wither loop schedules after 15 minutes
# This is a safety net in case loops get stuck due to chunk unload/reload
# Only clears if no wither entity is detected

# Phase 2 Charge loops
execute unless entity @e[type=wither] run schedule clear wither:wither/phase2/charge/charge
execute unless entity @e[type=wither] run schedule clear wither:wither/phase2/charge/charge2
execute unless entity @e[type=wither] run schedule clear wither:wither/phase2/charge/chargepre
execute unless entity @e[type=wither] run schedule clear wither:wither/phase2/charge/chargetick
execute unless entity @e[type=wither] run schedule clear wither:wither/phase2/charge/chargereset

# Phase 2 Dash loops
execute unless entity @e[type=wither] run schedule clear wither:wither/phase2/dashes/dash
execute unless entity @e[type=wither] run schedule clear wither:wither/phase2/dashes/dashto
execute unless entity @e[type=wither] run schedule clear wither:wither/phase2/dashes/endloop

# Phase 1 Homing loops
execute unless entity @e[type=wither] run schedule clear wither:wither/phase1/homing/homing
execute unless entity @e[type=wither] run schedule clear wither:wither/phase1/homing/homingpre
execute unless entity @e[type=wither] run schedule clear wither:wither/phase1/homing/homingtick
execute unless entity @e[type=wither] run schedule clear wither:wither/phase1/homing/homing5tick

# Phase 1 Music and checks
execute unless entity @e[type=wither] run schedule clear wither:wither/phase1/musicphase1
execute unless entity @e[type=wither] run schedule clear wither:wither/phase1/check_player_tick

# Phase 2 Music and enraged skulls
execute unless entity @e[type=wither] run schedule clear wither:wither/phase2/musicphase2
execute unless entity @e[type=wither] run schedule clear wither:wither/phase2/enraged/skulls/killskulls
execute unless entity @e[type=wither] run schedule clear wither:wither/phase2/enraged/skulls/skulls
execute unless entity @e[type=wither] run schedule clear wither:wither/phase2/enraged/skulls/stopskulls
execute unless entity @e[type=wither] run schedule clear wither:wither/phase2/enraged/skulls/rotation

# Skull launch and burst
execute unless entity @e[type=wither] run schedule clear wither:wither/skull/launch
execute unless entity @e[type=wither] run schedule clear wither:wither/skull/launch_end
execute unless entity @e[type=wither] run schedule clear wither:wither/skull/burst/launch_burst_loop
execute unless entity @e[type=wither] run schedule clear wither:wither/skull/burst/launch_burst_loop_reset

# Passive abilities
execute unless entity @e[type=wither] run schedule clear wither:wither/passive/spawn
execute unless entity @e[type=wither] run schedule clear wither:wither/passive/skull
execute unless entity @e[type=wither] run schedule clear wither:wither/passive/convert

# Fight start and unstuck
execute unless entity @e[type=wither] run schedule clear wither:wither/fight_start/part
execute unless entity @e[type=wither] run schedule clear wither:wither/unstuck/check
