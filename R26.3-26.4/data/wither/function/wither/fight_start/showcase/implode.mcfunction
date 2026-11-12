# Everything is pulled into the Wither and crushed
execute as @e[type=minecraft:item_display,tag=wIntro] run data merge entity @s {start_interpolation:0,interpolation_duration:18,transformation:{translation:[0f,0f,0f],scale:[0.05f,0.05f,0.05f]}}
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] run playsound minecraft:block.respawn_anchor.deplete hostile @a[distance=..64] ~ ~ ~ 2 0.5
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] run playsound minecraft:block.beacon.deactivate hostile @a[distance=..64] ~ ~ ~ 2 0.5
