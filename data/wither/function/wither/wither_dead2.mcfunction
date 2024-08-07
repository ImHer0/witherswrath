team remove Wither
scoreboard players set wCharge wcharge1 1
scoreboard players set wspawn spawn 0
scoreboard players remove witherCount witherCount 1

# DAYBREAK
    weather clear 10000t
    gamerule doDaylightCycle true
    execute if data storage wither:options {toggledestruction:0} run gamerule mobGriefing true

# NETHER STAR + TROPHY + XP
    execute as @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star",count:1}}] at @s run data merge entity @s {Invulnerable: 1b, Tags: ["nether_star"], Glowing: 1b}
    execute if data storage wither:options {toggletrophy:1} at @e[type=minecraft:item,sort=nearest,tag=nether_star] run summon item ~ ~ ~ {HasVisualFire: 0b, Glowing: 1b, CustomNameVisible: 1b, Age: -32768, Invulnerable: 1b, CustomName: '{"bold":true,"color":"#CC99FF","text":"ᴡɪᴛʜᴇʀᴇᴅ ʀᴏꜱᴇ"}', Item: {id: "minecraft:wither_rose", count: 1, components: {"minecraft:max_stack_size": 1, "minecraft:custom_name": '{"bold":true,"color":"#CC99FF","text":"ᴡɪᴛʜᴇʀᴇᴅ ʀᴏꜱᴇ"}', "minecraft:lore": ['{"color":"blue","text":"Trophy for defeating"}', '[{"color":"blue","text":"the "},{"bold":true,"color":"dark_purple","italic":true,"text":"Wither\'s Wrath"}]'], "minecraft:fire_resistant": {}, "minecraft:rarity": "epic", "minecraft:enchantments": {levels: {}}, "minecraft:enchantment_glint_override": true}}}
    execute at @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star",count:1}}] as @e[type=item,sort=nearest,limit=1,nbt={Item: {id: "minecraft:wither_rose"}}] as @s run data merge entity @s {Invulnerable: 1b}
    execute as @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star",count:1}}] at @s run summon armor_stand ~ ~ ~ {Invisible: 1b, Invulnerable: 1b, NoGravity: 1b, Tags: ["starxp"]}

schedule function wither:wither/wither_xp 1t

# MUSIC
    stopsound @a music
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 0.9
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run playsound minecraft:music.creative music @a
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 .85

# PEACE
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[type=wither_skeleton,distance=..100]
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[tag=wSkel,type=blaze,distance=..100]
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[tag=wSkel,type=zombified_piglin,distance=..200]
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[type=zombie,distance=..80]
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[type=creeper,distance=..80]
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[type=armor_stand,tag=hStand,distance=..100]
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[type=armor_stand,tag=poswi,distance=..100]
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run kill @e[type=armor_stand,tag=chargew,distance=..100]


# EFFECTS
    execute at @e[type=item,sort=nearest,tag=nether_star,limit=1] run summon minecraft:lightning_bolt ~ ~-2 ~
    execute as @e[type=item,sort=nearest,tag=nether_star,limit=1] as @s at @s run particle minecraft:soul ~ ~ ~ 0 0.5 0 0.07 220 normal
    execute as @e[type=item,sort=nearest,tag=nether_star,limit=1] as @s at @s run particle minecraft:soul ~ ~1 ~ 0 1 0 0.04 80 normal
    execute as @e[type=item,sort=nearest,tag=nether_star,limit=1] as @s at @s run playsound minecraft:particle.soul_escape master @e[type=player,distance=..100] ~ ~ ~ 100 0.1 1
    execute as @e[type=item,sort=nearest,tag=nether_star,limit=1] as @s at @s run playsound minecraft:particle.soul_escape master @e[type=player,distance=..100] ~ ~ ~ 30 1 1
    execute as @e[type=item,sort=nearest,tag=nether_star,limit=1] as @s at @s run playsound minecraft:particle.soul_escape master @e[type=player,distance=..100] ~ ~ ~ 30 1 1
