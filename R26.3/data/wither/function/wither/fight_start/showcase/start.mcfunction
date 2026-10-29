# Showcase intro (Default animation only), runs while the Wither is invulnerable (~11s):
# 32 blocks tear out of the ground one after another and orbit/tumble around the Wither,
# a glowing skull halo spins, a helix of light traces its ascent, the ground cracks with soul fire,
# then everything collapses into the Wither right as it explodes
execute unless entity @e[type=minecraft:wither,tag=Bedrock,limit=1] run return 0
kill @e[tag=wIntro]
scoreboard players set #intro wither.stats 0
scoreboard players set #4 wither.stats 4
scoreboard players set #6 wither.stats 6
scoreboard players set #10 wither.stats 10
scoreboard players set #30 wither.stats 30
scoreboard players set #24 wither.stats 24
scoreboard players set #48 wither.stats 48
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] run function wither:wither/fight_start/showcase/summon
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] run playsound minecraft:entity.warden.emerge hostile @a[distance=..64] ~ ~ ~ 1 0.6
execute at @e[type=minecraft:wither,tag=Bedrock,limit=1,sort=nearest] run playsound minecraft:block.respawn_anchor.charge hostile @a[distance=..64] ~ ~ ~ 1 0.5
function wither:wither/fight_start/showcase/loop
