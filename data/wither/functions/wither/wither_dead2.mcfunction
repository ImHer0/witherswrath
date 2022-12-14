team remove Wither
scoreboard players set wCharge wcharge1 1
scoreboard players set wspawn spawn 0

# DAYBREAK
weather clear 10000
gamerule doDaylightCycle true
execute if score destroy wdestroy matches 2 run gamerule mobGriefing true

# NETHER STAR + TROPHY + XP
execute as @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star"}}] at @s run data merge entity @s {Invulnerable:1b, Tags:["nether_star"]}
execute if score witherTrophy wTrophy matches 1 as @e[type=minecraft:item,sort=nearest,tag=nether_star] at @e[type=minecraft:item,sort=nearest,tag=nether_star] run summon item ~ ~1 ~ {Item:{id:"minecraft:wither_rose",Count:1b,tag:{Invulnerable:1b,Health:32767s,Age:-69s,Unbreakable:1,AttributeModifiers:[{AttributeName:"generic.armor",Amount:0,Name:"generic.armor",UUID:[I;-121715,18374,132036,-36748]}],display:{Name:'[{"text":"Withered Rose","italic":false,"color":"#666666"}]',Lore:['[{"text":"Trophy for defeating","italic":false,"color":"#888888"}]','[{"text":"the Wither\'s Wrath","italic":false,"color":"#888888"}]']},Enchantments:[{id:"unbreaking",lvl:255}],HideFlags:7}}}
execute at @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star"}}] as @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:wither_rose"}}] as @s run data merge entity @s {Invulnerable:1b}
execute as @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star"}}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["starxp"]}

schedule function wither:wither/wither_xp 1t



# MUSIC
stopsound @a music
execute at @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star"}}] run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 0.9
execute at @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star"}}] run playsound minecraft:music.creative music @a 
execute at @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star"}}] run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100 .85

# PEACE
execute at @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star"}}] run kill @e[type=wither_skeleton,distance=..200]
execute at @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star"}}] run kill @e[type=blaze,distance=..200]
execute at @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star"}}] run kill @e[type=zombie,distance=..80]
execute at @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star"}}] run kill @e[type=skeleton,distance=..80]
execute at @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:nether_star"}}] run kill @e[type=creeper,distance=..80]

# EFFECTS
execute at @e[type=item,sort=nearest,tag=nether_star] run summon minecraft:lightning_bolt ~ ~-2 ~ 
execute as @e[type=item,sort=nearest,tag=nether_star] as @s at @s run particle minecraft:soul ~ ~ ~ 0 0.5 0 0.07 220 normal
execute as @e[type=item,sort=nearest,tag=nether_star] as @s at @s run particle minecraft:soul ~ ~1 ~ 0 1 0 0.04 80 normal
execute as @e[type=item,sort=nearest,tag=nether_star] as @s at @s run playsound minecraft:particle.soul_escape master @a[distance=..100] ~ ~ ~ 100 0.1 1
execute as @e[type=item,sort=nearest,tag=nether_star] as @s at @s run playsound minecraft:particle.soul_escape master @a[distance=..100] ~ ~ ~ 30 1 1
execute as @e[type=item,sort=nearest,tag=nether_star] as @s at @s run playsound minecraft:particle.soul_escape master @a[distance=..100] ~ ~ ~ 30 1 1
