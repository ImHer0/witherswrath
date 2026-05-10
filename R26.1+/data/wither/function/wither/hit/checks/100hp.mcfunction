# Check if damage > 100 
# Heal + Resistance + Explosion


# Heal 100HP (Undead are healed by Instant Damage)
# Amplifier 16: (16+1) * 6 = 102 HP healing
data merge entity @s {active_effects:[{id:"minecraft:instant_damage",amplifier:4,duration:1,show_particles:0b},{id:"minecraft:resistance",amplifier:67,duration:200,show_particles:0b}]}

# Resistance 67 (As requested) for 10s (200 ticks)

# Sound: Sharp anvil / Crit
playsound block.anvil.land master @a ~ ~ ~ 5 .1
playsound entity.player.attack.crit master @a ~ ~ ~ 5 0.5

# Particles
particle campfire_cosy_smoke ~ ~ ~ 2 2 2 0.1 300
particle lava ~ ~ ~ 2 3 2 0.5 100

# Explosion
summon creeper ~ ~ ~ {Fuse:0,ignited:1b,ExplosionRadius:15b,powered:1b,Silent:1b,CustomName:"Wither Nuke",Team:"Wither",attributes:[{id:"minecraft:scale",base:0.0625}]}

