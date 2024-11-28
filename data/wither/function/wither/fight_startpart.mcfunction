execute at @e[type=minecraft:wither,limit=1,sort=nearest] run particle dust_color_transition{from_color:[0.600,0.600,0.600],scale:3,to_color:[1.000,1.000,1.000]} ~ ~1 ~ 0.9 1.2 0.9 0.001 100 normal

execute at @e[type=minecraft:wither,limit=1,sort=nearest] run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 0.5

schedule function wither:wither/fight_startpart 1s