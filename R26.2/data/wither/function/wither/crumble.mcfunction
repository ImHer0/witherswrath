# Ran as/at the Wither every 5 ticks at 50 HP or less: chunks break off and fall
# (falling blocks that never land as blocks, so nothing is placed)
execute store result score #r wither.scale run random value 1..8
execute if score #r wither.scale matches 1 run summon minecraft:falling_block ~ ~2.4 ~ {BlockState:"minecraft:blackstone",Time:1,DropItem:0b,CancelDrop:1b,HurtEntities:0b,Motion:[0.22d,0.3d,0.12d],Tags:["wSkel","wCrumb"]}
execute if score #r wither.scale matches 2 run summon minecraft:falling_block ~ ~2.4 ~ {BlockState:"minecraft:soul_soil",Time:1,DropItem:0b,CancelDrop:1b,HurtEntities:0b,Motion:[-0.2d,0.28d,0.18d],Tags:["wSkel","wCrumb"]}
execute if score #r wither.scale matches 3 run summon minecraft:falling_block ~ ~2.4 ~ {BlockState:"minecraft:basalt",Time:1,DropItem:0b,CancelDrop:1b,HurtEntities:0b,Motion:[0.05d,0.32d,-0.24d],Tags:["wSkel","wCrumb"]}
execute if score #r wither.scale matches ..3 run particle minecraft:block{block_state:"minecraft:blackstone"} ~ ~2.4 ~ 0.6 0.6 0.6 0.1 20 normal
execute if score #r wither.scale matches ..3 run particle minecraft:large_smoke ~ ~2.4 ~ 0.5 0.5 0.5 0.02 6 normal
execute if score #r wither.scale matches ..3 run playsound minecraft:block.deepslate.break hostile @a[distance=..32] ~ ~ ~ 1 0.6
particle minecraft:ash ~ ~2 ~ 0.8 0.8 0.8 0 6 normal
