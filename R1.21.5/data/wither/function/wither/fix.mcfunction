scoreboard objectives remove Health
scoreboard objectives remove wcharge1
scoreboard objectives remove witherCount
scoreboard objectives remove checkHealth
scoreboard objectives remove wticktime

advancement revoke @a only wither:wither/defeated_skeleton
advancement revoke @a only wither:wither/defeated_wither
advancement revoke @a only wither:wither/hit_wither
advancement revoke @a only wither:wither/hit2_wither
advancement revoke @a only wither:wither/hit3_wither
advancement revoke @a only wither:wither/hit4_wither
advancement revoke @a only wither:wither/hit5_wither
advancement revoke @a only wither:wither/prehit_wither
advancement revoke @a only wither:wither/summoned_wither

schedule clear wither:wither/bedrock/death/deadbedrock1t
schedule clear wither:wither/bedrock/death/deadbedrock2t
schedule clear wither:wither/bedrock/death/deadbedrock3t
schedule clear wither:wither/bedrock/death/deadbedrock4t

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
execute at @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star",count:1}},limit=1,tag=] run kill @e[type=experience_orb,sort=nearest,distance=..10]

execute as @e[type=player] run attribute @s minecraft:gravity modifier remove 1

function wither:load

tellraw @s {"text":"Wither's Wrath has been fixed!",bold:true,color:"#5e0000"}
