
data merge entity @s {ActiveEffects:[{Id:7,Amplifier:16b,Duration:1,ShowParticles:0b},{Id:11,Amplifier:67b,Duration:2000,ShowParticles:0b}]}
playsound entity.wither.spawn master @a ~ ~ ~ 10 0.5
playsound item.goat_horn.sound.0 master @a ~ ~ ~ 10 0.5
particle angry_villager ~ ~ ~ 3 3 3 1 100
execute unless entity @s[tag=HighDPS] run function wither:wither/midpoint/midpoint
execute unless entity @s[tag=HighDPS] run scoreboard players set wCharge wcharge1 2
execute unless entity @s[tag=HighDPS] if data storage wither:options {togglecharge:Enabled} run function wither:wither/phase2/charge/chargepre
execute unless entity @s[tag=HighDPS] if data storage wither:options {toggleanimation:Default} run function wither:wither/phase2/enraged/enraged
execute unless entity @s[tag=HighDPS] if data storage wither:options {toggledash:Enabled} run function wither:wither/phase2/dashes/dash
execute unless entity @s[tag=HighDPS] if data storage wither:options {toggleanimation:Bedrock} run function wither:wither/bedrock/death/deadbedrock
execute unless entity @s[tag=HighDPS] if data storage wither:options {toggleanimation:Default} run function wither:wither/phase2/swarm
tag @s add HighDPS
data merge entity @s {ActiveEffects:[{Id:7,Amplifier:16b,Duration:1,ShowParticles:0b}]}
