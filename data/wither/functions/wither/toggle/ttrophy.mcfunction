
# ON
execute if score witherTrophy wTrophy matches 2 as @p run schedule function wither:wither/toggle/ttrophyon 1s

# OFF
execute if score witherTrophy wTrophy matches 1 as @p run schedule function wither:wither/toggle/ttrophyoff 1s
