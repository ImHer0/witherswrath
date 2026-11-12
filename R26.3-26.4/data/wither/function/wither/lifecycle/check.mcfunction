# A second Wither while a fight is on: remove every Wither that isn't the boss (only the boss has the Bedrock tag).
# (It used to remove whichever had less health, which in phase 2 was the boss itself.)
execute if entity @e[type=minecraft:wither,tag=Bedrock,limit=1] as @e[type=minecraft:wither,tag=!Bedrock] at @s run function wither:wither/lifecycle/prevent_multiple
