# Ran by advancements for attacking the Wither
advancement revoke @s only wither:wither/hit5_wither


execute as @e[type=wither,scores={Health=..30}] if data storage wither:options {toggleanimation:2} at @s run function wither:wither/bedrock/death/deadbedrock