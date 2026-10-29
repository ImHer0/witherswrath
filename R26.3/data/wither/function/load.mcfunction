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
scoreboard objectives add wither.lastHealth dummy
scoreboard objectives add wither.currentHealth dummy
scoreboard objectives add wither.diff dummy
scoreboard objectives add wither.scale dummy
scoreboard objectives add wither.stats dummy
scoreboard objectives add wither.dmg dummy
scoreboard objectives add wither.deaths deathCount
scoreboard objectives add wither.variant dummy
scoreboard players set #10 wither.scale 10
scoreboard players set #2 wither.scale 2
scoreboard players set #20 wither.stats 20
scoreboard players set #1200 wither.stats 1200
function wither:wither/safemode
function wither:wither/team

execute if entity @e[type=minecraft:wither] run tellraw @a ["",{"text":"[ᴡɪᴛʜᴇʀ'ꜱ ᴡʀᴀᴛʜ] ","bold":true,"color":"#322A32"},{"text":"ᴛʜᴇ ᴘᴀᴄᴋ ᴡᴀꜱ (ʀᴇ)ʟᴏᴀᴅᴇᴅ ᴡʜɪʟᴇ ᴀ ᴡɪᴛʜᴇʀ ᴡᴀꜱ ᴀʟɪᴠᴇ... ᴋɪʟʟɪɴɢ ɪᴛ!!!","bold":true,"color":"dark_red"}]
execute if entity @e[type=minecraft:wither] run function wither:wither/fix

# prevents storage from being set if already initialized previously (saves current settings if any)
execute unless data storage wither:options {initialized:3} run function wither:initialize_storage

# Options added after storage version 3 (keeps existing settings)
execute unless data storage wither:options togglescaling run data modify storage wither:options togglescaling_string set value '"#13e800"'
execute unless data storage wither:options togglescaling run data modify storage wither:options togglescaling set value Enabled

