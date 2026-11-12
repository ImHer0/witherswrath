# After the death blast: put the Nether Star back, restore gamerules, then drop the XP

execute as @e[type=item,sort=nearest,tag=nether_star,limit=1] at @e[type=marker,tag=death_blast_star,limit=1] run tp @s ~ ~ ~
execute as @e[type=item,sort=nearest,tag=nether_star,limit=1] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

execute if data storage wither:options {toggledestruction:Disabled} if score mobGrf rules matches 1 run gamerule mob_griefing true

kill @e[type=marker,tag=death_blast]
kill @e[type=marker,tag=death_blast_star]

# XP was held back so the blast wouldn't destroy the orbs
function wither:xp/xp
