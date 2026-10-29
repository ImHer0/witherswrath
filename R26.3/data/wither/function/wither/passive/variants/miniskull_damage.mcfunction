# Ran as a player caught in a small skull's burst. Macro: dmg, wsec, wamp
# Credits the Triskull that fired it when it's still alive
tag @s add wMiniHitNow
scoreboard players set #hit wither.scale 0
$execute as @e[type=minecraft:snowball,tag=wBursting,limit=1] on origin store success score #hit wither.scale run damage @p[tag=wMiniHitNow] $(dmg) minecraft:wither_skull by @s
$execute if score #hit wither.scale matches 0 run damage @s $(dmg) minecraft:magic
$effect give @s minecraft:wither $(wsec) $(wamp)
tag @s remove wMiniHitNow
