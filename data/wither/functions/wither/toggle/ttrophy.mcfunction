
# ON
execute if score witherTrophy wTrophy matches 2 as @p run schedule function wither:wither/toggle/ttrophyon 1t
execute if score witherTrophy wTrophy matches 2 run tellraw @s ["",{"text":"Wither Trophy","bold":true,"color":"#575757"},{"text":" has been ","color":"#575757"},{"text":"enabled!","color":"#13e800"}]

# OFF
execute if score witherTrophy wTrophy matches 1 as @p run schedule function wither:wither/toggle/ttrophyoff 1t
execute if score witherTrophy wTrophy matches 1 run tellraw @s ["",{"text":"Wither Trophy","bold":true,"color":"#575757"},{"text":" has been ","color":"#575757"},{"text":"disabled!","color":"#e80f00"}]
