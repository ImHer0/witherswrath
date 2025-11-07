scoreboard objectives add witherCount dummy

scoreboard players set witherCount witherCount 0
scoreboard objectives add checkHealth dummy
scoreboard objectives add playerCount dummy
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
scoreboard objectives add burstcount dummy
scoreboard objectives add rules dummy
scoreboard objectives add stages dummy
scoreboard objectives add wither.temp.x dummy
scoreboard objectives add wither.temp.y dummy
scoreboard objectives add wither.temp.z dummy
scoreboard objectives add wither.temp.px dummy
scoreboard objectives add wither.temp.py dummy
scoreboard objectives add wither.temp.pz dummy
function wither:wither/safemode

execute if entity @e[type=minecraft:wither] run tellraw @a ["",{"text":"[ᴡɪᴛʜᴇʀ'ꜱ ᴡʀᴀᴛʜ] ","bold":true,"color":"#322A32"},{"text":"ᴛʜᴇ ᴘᴀᴄᴋ ᴡᴀꜱ (ʀᴇ)ʟᴏᴀᴅᴇᴅ ᴡʜɪʟᴇ ᴀ ᴡɪᴛʜᴇʀ ᴡᴀꜱ ᴀʟɪᴠᴇ... ᴋɪʟʟɪɴɢ ɪᴛ!!!","bold":true,"color":"dark_red"}]
execute if entity @e[type=minecraft:wither] run function wither:wither/fix

# prevents storage from being set if already initialized previously (saves current settings if any)
execute unless data storage wither:options {initialized:2} run function wither:initialize_storage

