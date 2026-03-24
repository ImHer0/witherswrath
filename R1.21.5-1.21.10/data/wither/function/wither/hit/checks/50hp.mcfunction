
data merge entity @s {active_effects:[{id:"minecraft:instant_damage",amplifier:3,duration:1,show_particles:0b},{id:"minecraft:resistance",amplifier:50,duration:40,show_particles:0b}]}
playsound item.firecharge.use master @a ~ ~ ~ 2 0.8
playsound entity.blaze.shoot master @a ~ ~ ~ 2 1.2
particle flame ~ ~ ~ 0.5 1 0.5 0.1 50
particle crit ~ ~ ~ 0.5 1 0.5 0.5 50
summon creeper ~ ~ ~ {Fuse:0,ignited:1b,ExplosionRadius:6}
