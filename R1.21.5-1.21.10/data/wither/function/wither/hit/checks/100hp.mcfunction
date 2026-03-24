
data merge entity @s {active_effects:[{id:"minecraft:instant_damage",amplifier:5,duration:1,show_particles:0b},{id:"minecraft:resistance",amplifier:67,duration:200,show_particles:0b}]}
playsound block.anvil.land master @a ~ ~ ~ 5 2
playsound entity.player.attack.crit master @a ~ ~ ~ 5 0.5
particle campfire_cosy_smoke ~ ~ ~ 1 1 1 0.1 100
particle lava ~ ~ ~ 1 1 1 0.5 50
summon creeper ~ ~ ~ {Fuse:0,ignited:1b,ExplosionRadius:10,powered:1b}
