
data merge entity @s {ActiveEffects:[{Id:7,Amplifier:3b,Duration:1,ShowParticles:0b},{Id:11,Amplifier:50b,Duration:40,ShowParticles:0b}]}
playsound item.firecharge.use master @a ~ ~ ~ 2 0.8
playsound entity.blaze.shoot master @a ~ ~ ~ 2 1.2
particle flame ~ ~ ~ 0.5 1 0.5 0.1 50
particle crit ~ ~ ~ 0.5 1 0.5 0.5 50
summon creeper ~ ~ ~ {Fuse:0,ignited:1b,ExplosionRadius:6}
