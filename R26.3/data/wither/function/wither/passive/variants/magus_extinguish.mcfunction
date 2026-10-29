# Rest ~4s before catching fire again
data merge entity @s {HasVisualFire:0b}
tag @s remove wCharging
scoreboard players set @s wither.variant -12
