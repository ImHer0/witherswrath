# Ran every 5 ticks from 5tick while a fight is active

# The fight Wither gone without a player kill (peaceful, /kill, the void...) ends the fight instead of leaving it stuck
execute as @e[type=minecraft:wither,tag=Bedrock,limit=1] run function wither:wither/lifecycle/track
execute unless entity @e[type=minecraft:wither,tag=theWither,limit=1] if data storage wither:fight last run function wither:wither/lifecycle/lost with storage wither:fight last

# Mace (density) and spears get resisted (the resistance lasts 1s, so every 5 ticks is enough)
execute as @e[type=minecraft:wither,tag=Bedrock,limit=1] at @s as @p if items entity @s weapon.mainhand mace[minecraft:enchantments~[{enchantment:"minecraft:density"}]] run effect give @e[type=minecraft:wither,tag=Bedrock,limit=1] minecraft:resistance 1 2 true
execute as @e[type=minecraft:wither,tag=Bedrock,limit=1] at @s as @p if items entity @s weapon.mainhand #minecraft:spears run effect give @e[type=minecraft:wither,tag=Bedrock,limit=1] minecraft:resistance 1 2 true

# WITHER HEALTH NEVER ABOVE HALF AFTER HITTING IT
execute as @e[type=minecraft:wither,tag=Bedrock,tag=!Wither,tag=!HighDPS] if score @s Health matches 298.. run data modify entity @s Health set value 298.0f
execute as @e[type=minecraft:wither,tag=Bedrock,tag=!Dash,tag=!HighDPS] if score @s Health matches 100.. run data modify entity @s Health set value 98.0f

# Blocks the fight blows up despawn after 1 minute instead of 5 (each dropped item costs tick time)
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1] as @e[type=minecraft:item,distance=..64,tag=!wDrop] run function wither:wither/rubble

# Blaze riders dismount once they land
execute as @e[type=minecraft:wither_skeleton,tag=wArcher,limit=1,sort=random] at @e[type=minecraft:blaze,tag=wArcher,sort=nearest,limit=1] unless block ~ ~-.1 ~ air run ride @s dismount
execute unless entity @a run kill @e[type=minecraft:item_display,tag=hStand]

# EFFECT NEARBY PLAYER "HELPERS"
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1] as @e[type=minecraft:iron_golem,distance=..20,limit=1,sort=random] unless data entity @s CustomName run function wither:wither/passive/golem

# SPECIAL FX FOR SPAWNED MOBS
execute at @e[tag=wSkel] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 .03 3 normal

# PREVENT BOTH BLAZES AND WITHERS FROM TARGETING WITHER AND THE VICE VERSA
# team=!Wither: only joins mobs not already on the team (re-joining resends team packets)
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1] as @e[type=#minecraft:wither_friends,distance=..40,team=!Wither,team=!WitherElite] run team join Wither
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1] as @e[type=minecraft:blaze,distance=..40,team=!Wither] run team join Wither
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1] as @e[type=#minecraft:aquatic,distance=..50,team=!Wither] run team join Wither

execute if score enraged wenraged matches 1 at @e[type=minecraft:wither,tag=Bedrock,limit=1] run particle minecraft:mycelium ~ ~1 ~ 1 1 1 0 80 normal
execute if score enraged wenraged matches 1 at @e[type=minecraft:wither,tag=Bedrock,limit=1] run particle minecraft:trial_omen ~ ~1 ~ 1 1 1 2 10 normal

execute at @e[type=minecraft:wither,tag=Bedrock,limit=1] run particle minecraft:ash ~ ~ ~ 10 10 10 0 60 normal

# 50 HP: the Wither starts falling apart
execute as @e[type=minecraft:wither,tag=Bedrock,scores={Health=..50}] at @s run function wither:wither/crumble

# PHASE CHECKS
execute if entity @e[type=minecraft:wither,tag=Swarm,limit=1] run function wither:wither/hit/hit6
execute if entity @e[type=minecraft:wither,tag=Bedrock,limit=1] run function wither:wither/hit/hit5
execute if entity @e[type=minecraft:wither,tag=Dash,limit=1] run function wither:wither/hit/hit4
execute if entity @e[type=minecraft:wither,tag=Charge,limit=1] run function wither:wither/hit/hit3
execute if entity @e[type=minecraft:wither,tag=Wither,limit=1] run function wither:wither/hit/hit2
