
# Ends loop after 4 minutes and kills display star
kill @e[type=item_display,tag=nether_star,limit=1]
schedule clear wither:nether_star/tick