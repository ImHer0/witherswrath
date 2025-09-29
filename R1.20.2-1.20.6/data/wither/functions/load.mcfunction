scoreboard objectives add witherCount dummy

scoreboard players set witherCount witherCount 0
scoreboard objectives add checkHealth dummy
scoreboard objectives add witherCheck dummy
scoreboard objectives add skullposX dummy
scoreboard objectives add skullposY dummy
scoreboard objectives add skullposZ dummy
scoreboard objectives add playerposX dummy
scoreboard objectives add playerposY dummy
scoreboard objectives add playerposZ dummy
scoreboard objectives add skulllaunchmotX dummy
scoreboard objectives add skulllaunchmotY dummy
scoreboard objectives add skulllaunchmotZ dummy
scoreboard objectives add rules dummy
scoreboard objectives add stages dummy
function wither:wither/safemode

execute if entity @e[type=minecraft:wither] run tellraw @a ["",{"text":"[ᴡɪᴛʜᴇʀ'ꜱ ᴡʀᴀᴛʜ] ","bold":true,"color":"#322A32"},{"text":"ᴛʜᴇ ᴘᴀᴄᴋ ᴡᴀꜱ (ʀᴇ)ʟᴏᴀᴅᴇᴅ ᴡʜɪʟᴇ ᴀ ᴡɪᴛʜᴇʀ ᴡᴀꜱ ᴀʟɪᴠᴇ... ᴋɪʟʟɪɴɢ ɪᴛ!!!","bold":true,"color":"dark_red"}]
execute if entity @e[type=minecraft:wither] run function wither:wither/fix

execute unless data storage wither:options {initialized:2} run function wither:initialize_storage

