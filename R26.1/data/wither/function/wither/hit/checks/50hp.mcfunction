# Check if damage > 50
# Lesser explosion + Resistance 100 (2s)

# Heal ~25HP and Resistance 50 for 2s (40 ticks)
data merge entity @s {active_effects:[{id:"minecraft:instant_damage",amplifier:3,duration:1,show_particles:0b},{id:"minecraft:resistance",amplifier:50,duration:40,show_particles:0b}]}

# Sounds: Flame/Ignite + Lighter impact
playsound item.firecharge.use master @a ~ ~ ~ 2 0.8
playsound entity.blaze.shoot master @a ~ ~ ~ 2 1.2

# Particles: Flame and Crit
particle flame ~ ~ ~ 0.5 1 0.5 0.1 50
particle crit ~ ~ ~ 0.5 1 0.5 0.5 50

# Explosion (Radius 6)
summon creeper ~ ~ ~ {Fuse:0,ignited:1b,ExplosionRadius:6b,Silent:1b,CustomName:"Wither Bomb",Team:"Wither",attributes:[{id:"minecraft:scale",base:0.0625}]}
