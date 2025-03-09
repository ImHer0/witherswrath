team remove Wither
scoreboard players set wCharge wcharge1 1
scoreboard players set wspawn spawn 0
scoreboard players set witherCount witherCount 0



# DAYBREAK
    weather clear 10000t
    gamerule doDaylightCycle true
    execute if data storage wither:options {toggledestruction:0} run gamerule mobGriefing true

    schedule function wither:xp/xp 1t


# MUSIC
    schedule clear wither:wither/musicphase2
    execute as @a run stopsound @a record minecraft:wither.phase2
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run playsound minecraft:wither.death hostile @a ~ ~ ~ 1 1
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 0.9
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run playsound minecraft:music.creative music @a
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 .85

# PEACE
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[type=wither_skeleton,distance=..100]
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[tag=wSkel]
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[tag=wither_dash]
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[tag=wArcher]
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[type=zombie,distance=..80]
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[type=creeper,distance=..80]
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[type=armor_stand,tag=hStand,distance=..100]
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[type=armor_stand,tag=chargew,distance=..100]
