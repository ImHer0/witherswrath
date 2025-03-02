# Ran by advancements for attacking the Wither
advancement revoke @s only wither:wither/hit5_wither


execute as @e[type=wither,scores={Health=..20}] unless data storage wither:options {toggleanimation:1} at @s run function wither:wither/bedrock/death/deadbedrock