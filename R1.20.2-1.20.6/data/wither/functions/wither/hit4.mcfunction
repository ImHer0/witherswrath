# Ran by advancements for attacking the Wither
advancement revoke @s only wither:wither/hit4_wither

execute as @e[type=wither,scores={Health=..100}] if data storage wither:options {toggleanimation:Default} if data storage wither:options {toggledash:Enabled} at @s run function wither:wither/enraged/enraged
execute as @e[type=wither,scores={Health=..100}] if data storage wither:options {toggledash:Enabled} at @s run function wither:wither/dashes/dash
