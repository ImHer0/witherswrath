# Store current health
execute store result score @s wither.currentHealth run data get entity @s Health

# Initialize LastHealth if not set (avoid huge damage on first hit after reload) or 0
execute unless score @s wither.lastHealth matches 1.. run scoreboard players operation @s wither.lastHealth = @s wither.currentHealth

# Calculate difference (Last Health - Current Health)
scoreboard players operation @s wither.diff = @s wither.lastHealth
scoreboard players operation @s wither.diff -= @s wither.currentHealth


# Check thresholds:
# > 150: Enraged
# 100..150: Tank (Heal+Resist+Explosion)
# 50..99: Small Explosion

execute unless entity @s[tag=HighDPS] if score @s wither.diff matches 151.. run function wither:wither/hit/checks/150hp
execute if score @s wither.diff matches 100..150 run function wither:wither/hit/checks/100hp
execute if score @s wither.diff matches 50..99 run function wither:wither/hit/checks/50hp

# MULTIPLAYER SCALING: refunds part of normal hits when more players are nearby
execute if data storage wither:options {togglescaling:Enabled} if score @s wither.diff matches 1..49 run function wither:wither/hit/scaling

# FIGHT STATS: credit the hitter
execute if score @s wither.diff matches 1.. run scoreboard players operation @a[tag=wither.hitter,limit=1] wither.dmg += @s wither.diff

# Update Last Health for next check
scoreboard players operation @s wither.lastHealth = @s wither.currentHealth