# Check if damage > 150 (Enraged)
# Trigger enraged mode, play sounds

tellraw @a {"text":"The Wither is enraged!","color":"dark_red",bold:true}

# Heal ~130HP (Undead are healed by Instant Damage)
# Amplifier 21: (21+1) * 6 = 132 HP healing
data merge entity @s {active_effects:[{id:"minecraft:instant_damage",amplifier:16,duration:1,show_particles:0b},{id:"minecraft:resistance",amplifier:67,duration:2000,show_particles:0b}]}

# Sounds: Low pitch spawn + warning
playsound entity.wither.spawn master @a ~ ~ ~ 10 0.5
playsound item.goat_horn.sound.0 master @a ~ ~ ~ 10 0.5

particle angry_villager ~ ~ ~ 3 3 3 1 100

# Trigger hit functions
# From hit3
scoreboard players set wCharge wcharge1 2
execute if data storage wither:options {togglecharge:Enabled} run function wither:wither/phase2/charge/chargepre

# From hit4
execute if data storage wither:options {toggleanimation:Default} run function wither:wither/phase2/enraged/enraged
execute if data storage wither:options {toggledash:Enabled} run function wither:wither/phase2/dashes/dash

# From hit5
execute if data storage wither:options {toggleanimation:Bedrock} run function wither:wither/bedrock/death/deadbedrock

# From hit6
execute if data storage wither:options {toggleanimation:Default} run function wither:wither/phase2/swarm

tag @s add HighDPS

