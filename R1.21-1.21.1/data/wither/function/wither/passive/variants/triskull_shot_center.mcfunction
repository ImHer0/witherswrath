# Middle head; 3 in 10 volleys open with a slow, harder-hitting pale skull instead
playsound minecraft:entity.wither.shoot hostile @a[distance=..24] ~ ~ ~ 0.5 1.7
execute store result score #roll wither.scale run random value 1..10
execute if score #roll wither.scale matches ..3 anchored eyes facing entity @p[distance=..20,gamemode=!spectator] eyes positioned ^ ^ ^0.6 run return run function wither:wither/passive/variants/triskull_fire {speed:"0.3",item:"minecraft:skeleton_skull",kind:"wMiniSlow"}
execute anchored eyes facing entity @p[distance=..20,gamemode=!spectator] eyes positioned ^ ^ ^0.6 run function wither:wither/passive/variants/triskull_fire {speed:"0.55",item:"minecraft:wither_skeleton_skull",kind:"wMiniFast"}
