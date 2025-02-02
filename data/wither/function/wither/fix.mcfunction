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
advancement revoke @a only wither:wither/prehit_wither
advancement revoke @a only wither:wither/summoned_wither


data remove storage temp Head

stopsound @a record

tp @e[type=wither] ~ -100 ~
kill @e[type=wither]
kill @e[type=wither_skull]
kill @e[type=item_display,tag=nether_star,limit=1]
kill @e[tag=wSkel]
kill @e[tag=wArcher]
kill @e[type=armor_stand,tag=hStand]
kill @e[type=armor_stand,tag=starxp]
kill @e[type=armor_stand,tag=chargew]
kill @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star",count:1}},limit=1,tag=]

execute as @e[type=player] run attribute @s minecraft:gravity modifier remove 1

function wither:load

tellraw @s {"text":"Wither's Wrath has been fixed!","bold":true,"color":"#5e0000"}
