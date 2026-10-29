# Visual fire only (wither skeletons are already fire-immune)
data merge entity @s {HasVisualFire:1b}
tag @s add wCharging
playsound minecraft:entity.blaze.burn hostile @a[distance=..16] ~ ~ ~ 1 0.8
