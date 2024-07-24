scoreboard objectives remove Health
scoreboard objectives remove Health1
scoreboard objectives remove wcharge1
scoreboard objectives remove wtime
scoreboard objectives remove smoke
scoreboard objectives remove witherCount
scoreboard objectives remove checkHealth

advancement revoke @a only wither:wither/defeated_skeleton
advancement revoke @a only wither:wither/defeated_wither
advancement revoke @a only wither:wither/hit_wither
advancement revoke @a only wither:wither/hit2_wither
advancement revoke @a only wither:wither/hit3_wither
advancement revoke @a only wither:wither/prehit_wither
advancement revoke @a only wither:wither/summoned_wither
advancement revoke @a only wither:wither/give_wskulls

data remove storage temp Head

kill @e[type=armor_stand,tag=hStand]
kill @e[type=armor_stand,tag=poswi]
kill @e[type=armor_stand,tag=starxp]
kill @e[type=armor_stand,tag=chargew]

execute as @e[type=player] run attribute @s minecraft:generic.gravity modifier remove 1

tellraw @s {"text":"Please do /reload or disable and enable the datapack to complete","bold":true,"color":"#890101","clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=dQw4w9WgXcQ"}}   
