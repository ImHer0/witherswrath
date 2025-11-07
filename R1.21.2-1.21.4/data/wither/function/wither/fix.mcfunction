scoreboard objectives remove Health
scoreboard objectives remove wcharge1
scoreboard objectives remove witherCount
scoreboard objectives remove checkHealth
scoreboard objectives remove wticktime
scoreboard objectives remove wchargereset
scoreboard objectives remove wenraged
scoreboard objectives remove skullposX
scoreboard objectives remove skullposY
scoreboard objectives remove skullposZ
scoreboard objectives remove playerposX
scoreboard objectives remove playerposY
scoreboard objectives remove playerposZ
scoreboard objectives remove skulllaunchmotX
scoreboard objectives remove skulllaunchmotY
scoreboard objectives remove skulllaunchmotZ
scoreboard objectives remove burstcount
scoreboard objectives remove spawn
scoreboard objectives remove playerCount
scoreboard objectives remove witherCheck
scoreboard objectives remove wither.temp.x
scoreboard objectives remove wither.temp.y
scoreboard objectives remove wither.temp.z
scoreboard objectives remove wither.temp.px
scoreboard objectives remove wither.temp.py
scoreboard objectives remove wither.temp.pz

scoreboard objectives remove rules
scoreboard objectives remove stages

team remove Wither

advancement revoke @a only wither:wither/defeated_skeleton
advancement revoke @a only wither:wither/defeated_wither
advancement revoke @a only wither:wither/hit_wither
advancement revoke @a only wither:wither/hit2_wither
advancement revoke @a only wither:wither/hit3_wither
advancement revoke @a only wither:wither/hit4_wither
advancement revoke @a only wither:wither/hit5_wither
advancement revoke @a only wither:wither/prehit_wither

schedule clear wither:wither/bedrock/death/deadbedrock1t
schedule clear wither:wither/bedrock/death/deadbedrock2t
schedule clear wither:wither/bedrock/death/deadbedrock3t
schedule clear wither:wither/bedrock/death/deadbedrock4t
schedule clear wither:wither/phase1/check_player_tick
schedule clear wither:wither/skull/launch
schedule clear wither:wither/phase1/musicphase1
schedule clear wither:wither/phase2/musicphase2
schedule clear wither:wither/phase2/charge/charge
schedule clear wither:wither/phase2/charge/charge2
schedule clear wither:wither/phase2/charge/chargepre
schedule clear wither:wither/phase2/charge/chargetick
schedule clear wither:wither/phase2/dashes/dash
schedule clear wither:wither/phase2/dashes/dashto
schedule clear wither:wither/phase2/dashes/endloop
schedule clear wither:wither/phase1/homing/homingpre
schedule clear wither:wither/phase1/homing/homingtick
schedule clear wither:wither/phase1/homing/homing5tick
schedule clear wither:wither/phase2/enraged/skulls/skulls
schedule clear wither:wither/phase2/enraged/skulls/stopskulls
schedule clear wither:wither/phase2/enraged/skulls/rotation
schedule clear wither:wither/phase2/enraged/skulls/killskulls
schedule clear wither:wither/phase2/enraged/skulls/1
schedule clear wither:wither/phase2/enraged/skulls/2
schedule clear wither:wither/phase2/enraged/skulls/3
schedule clear wither:wither/skull/launch_end
schedule clear wither:wither/skull/burst/launch_burst_loop
schedule clear wither:wither/unstuck/check
schedule clear wither:wither/fight_start/part
schedule clear wither:wither/fight_start/tick
schedule clear wither:wither/fight_start/bedrock
schedule clear wither:wither/fight_start/init
schedule clear wither:wither/lifecycle/spawn
schedule clear wither:wither/midpoint/midpoint2
schedule clear wither:wither/midpoint/midpointtick
schedule clear wither:wither/midpoint/midpointparttick
schedule clear wither:wither/midpoint/midpointbedrock
schedule clear wither:wither/midpoint/midpoint2.5
schedule clear wither:wither/midpoint/midpointground
schedule clear wither:wither/midpoint/spawns/blaze1
schedule clear wither:wither/midpoint/spawns/blaze2
schedule clear wither:wither/midpoint/spawns/blaze3
schedule clear wither:wither/midpoint/spawns/blaze4
schedule clear wither:wither/midpoint/spawns/blaze5
schedule clear wither:wither/midpoint/spawns/blaze6
schedule clear wither:wither/midpoint/spawns/blaze7
schedule clear wither:wither/midpoint/spawns/blaze8
schedule clear wither:wither/midpoint/spawns/blaze9
schedule clear wither:wither/midpoint/spawns/blaze10
schedule clear wither:wither/midpoint/spawns/blaze11
schedule clear wither:wither/midpoint/spawns/blaze12
schedule clear wither:wither/midpoint/spawns/blaze13
schedule clear wither:wither/midpoint/spawns/blaze14
schedule clear wither:wither/midpoint/spawns/blaze15
schedule clear wither:wither/midpoint/spawns/blaze16
schedule clear wither:wither/midpoint/spawns/blaze17
schedule clear wither:wither/midpoint/spawns/blaze18
schedule clear wither:wither/midpoint/spawns/blaze19
schedule clear wither:wither/midpoint/spawns/blaze20
schedule clear wither:wither/midpoint/spawns/blaze21
schedule clear wither:wither/midpoint/spawns/blaze22
schedule clear wither:wither/midpoint/spawns/blaze23
schedule clear wither:wither/midpoint/spawns/blaze24
schedule clear wither:wither/midpoint/spawns/blaze25
schedule clear wither:wither/midpoint/spawns/blaze26
schedule clear wither:wither/midpoint/spawns/blaze27
schedule clear wither:wither/midpoint/spawns/blaze28
schedule clear wither:wither/midpoint/spawns/blaze29
schedule clear wither:wither/midpoint/spawns/blaze30
schedule clear wither:wither/midpoint/particles/down1
schedule clear wither:wither/midpoint/particles/down2
schedule clear wither:wither/midpoint/particles/down3
schedule clear wither:wither/midpoint/particles/down4
schedule clear wither:wither/midpoint/particles/down5
schedule clear wither:wither/midpoint/particles/clearlev
schedule clear wither:wither/passive/skull
schedule clear wither:wither/passive/spawn
schedule clear wither:wither/passive/convert
schedule clear wither:wither/skull
schedule clear wither:wither_check
schedule clear wither:5tick
schedule clear wither:xp/xp
schedule clear wither:xp/xp1
schedule clear wither:xp/xp2
schedule clear wither:xp/xp3
schedule clear wither:xp/xp4
schedule clear wither:xp/xp5
schedule clear wither:xp/xp6
schedule clear wither:xp/xp7
schedule clear wither:xp/xp8
schedule clear wither:xp/xp9
schedule clear wither:xp/xp10

data remove storage temp Head


stopsound @a record

kill @e[type=armor_stand,tag=wither_spin]
kill @e[type=armor_stand,tag=wither_stasis]
tp @e[type=wither] ~ -200 ~
kill @e[type=wither]
kill @e[type=wither_skull]
kill @e[type=item_display,tag=nether_star]
kill @e[tag=wither_dash]
kill @e[tag=wSkel]
kill @e[tag=wArcher]
kill @e[type=armor_stand,tag=hStand]
kill @e[type=armor_stand,tag=starxp]
kill @e[type=armor_stand,tag=chargew]
kill @e[type=armor_stand,tag=midpointpos]
execute at @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star",count:1}},limit=1,tag=] run kill @e[type=experience_orb,sort=nearest,distance=..10]

execute as @e[type=player] run attribute @s minecraft:gravity modifier remove 1

function wither:load

tellraw @s {"text":"Wither's Wrath has been fixed!","bold":true,"color":"#5e0000"}
