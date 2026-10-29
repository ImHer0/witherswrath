playsound minecraft:entity.wither.shoot hostile @a[distance=..24] ~ ~ ~ 0.4 1.9
execute anchored eyes facing entity @p[distance=..20,gamemode=!spectator] eyes positioned ^0.78 ^-0.26 ^0.4 run function wither:wither/passive/variants/triskull_fire {speed:"0.55",item:"minecraft:wither_skeleton_skull",kind:"wMiniFast"}
