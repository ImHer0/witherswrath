# DISPLAY
    execute if data storage wither:options {toggleanimation:0} as @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star",count:1}},limit=1] at @s run summon item_display ~ ~ ~ {NoGravity:1b,Glowing:1b,Tags:["nether_star"],glow_color_override:16777215,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.8f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:nether_star",count:1}}

# Summons armour stand for xp
    execute if data storage wither:options {toggleanimation:0} as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:nether_star",count:1}}] at @s run summon armor_stand ~ ~ ~ {Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, Tags: ["starxp"]}


# replaces nether star properties 
    execute if data storage wither:options {toggleanimation:0} as @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star",count:1}},limit=1] at @s unless block ~ ~-0.7 ~ air run tp @s ~ ~.75 ~
    execute if data storage wither:options {toggleanimation:0} as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:nether_star",count:1}}] at @s run data merge entity @s {PickupDelay:20, Invulnerable: 1b, Tags: ["nether_star"], NoGravity:1b}
    execute if data storage wither:options {toggletrophy:1} at @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star",count:1}},limit=1] run function wither:nether_star/trophy
    execute if data storage wither:options {toggleanimation:2} as @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:nether_star",count:1}}] at @s run data merge entity @s {Motion:[0.0,0.1,0.0],Item:{id:"minecraft:nether_star",count:1}}


# EFFECTS
    execute as @e[type=item,sort=nearest,tag=nether_star,limit=1] as @s at @s run playsound minecraft:wither.death hostile @a ~ ~ ~ 1 1
    execute as @e[type=item,sort=nearest,tag=nether_star,limit=1] if data storage wither:options {toggleanimation:0} as @s at @s run particle minecraft:soul ~ ~ ~ 0 0.5 0 0.07 220 normal
    execute as @e[type=item,sort=nearest,tag=nether_star,limit=1] if data storage wither:options {toggleanimation:0} as @s at @s run particle minecraft:soul ~ ~1 ~ 0 1 0 0.04 80 normal
    execute as @e[type=item,sort=nearest,tag=nether_star,limit=1] as @s at @s run playsound minecraft:particle.soul_escape master @e[type=player,distance=..100] ~ ~ ~ 100 0.1 1
    execute as @e[type=item,sort=nearest,tag=nether_star,limit=1] as @s at @s run playsound minecraft:particle.soul_escape master @e[type=player,distance=..100] ~ ~ ~ 30 1 1
    execute as @e[type=item,sort=nearest,tag=nether_star,limit=1] as @s at @s run playsound minecraft:particle.soul_escape master @e[type=player,distance=..100] ~ ~ ~ 30 1 1
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] if data storage wither:options {toggleanimation:0} run summon minecraft:lightning_bolt ~ ~-2 ~

    

execute if data storage wither:options {toggleanimation:0} run function wither:nether_star/tick
schedule function wither:nether_star/endloop 4800t