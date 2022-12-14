scoreboard objectives add wTrophy dummy
scoreboard players set witherTrophy wTrophy 1
scoreboard objectives add whoming dummy
scoreboard players set wHoming whoming 1
scoreboard objectives add wdestroy dummy
scoreboard players set destroy wdestroy 1
execute unless score @s wTime matches 2 run scoreboard players set @s wTime 2

