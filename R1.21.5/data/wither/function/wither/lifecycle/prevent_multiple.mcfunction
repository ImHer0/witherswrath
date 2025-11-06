scoreboard players remove witherCount witherCount 1

execute as @s run data merge entity @s {attributes:[{id:"minecraft:scale",base:0.0625}]}

stopsound @a hostile minecraft:entity.wither.spawn
stopsound @a hostile minecraft:entity.wither.ambient

execute at @s run playsound minecraft:block.note_block.didgeridoo master @e[type=player,distance=..20] ~ ~ ~ 1 .8

execute at @s run summon item ~ ~ ~ {Team:"Wither",Invulnerable:1b,Motion:[0.0,.45,0.0],Item:{id:"minecraft:wither_skeleton_skull",count:3}}

execute at @s run summon item ~ ~ ~ {Team:"Wither",Invulnerable:1b,Motion:[0.0,.35,0.0],Item:{id:"minecraft:soul_sand",count:4}}

execute at @s run tellraw @p ["",{"text":"[á´¡Éªá´›Êœá´‡Ê€'êœ± á´¡Ê€á´€á´›Êœ] ","bold":true,"color":"#322A32"},{"text":"There can only be ","bold":true,"color":"#8F09CE"},{"text":"ONE","bold":true,"color":"#3C1650"}]

kill @s

stopsound @a hostile minecraft:entity.wither.death 

kill @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star"}}]



