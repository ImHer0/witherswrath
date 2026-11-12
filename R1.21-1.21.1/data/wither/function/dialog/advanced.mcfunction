# The Bedrock Wither button's state comes from the animation setting
data modify storage wither:options bedrockmode set value Disabled
data modify storage wither:options bedrockmode_string set value '"#e80f00"'
execute if data storage wither:options {toggleanimation:Bedrock} run data modify storage wither:options bedrockmode set value Enabled
execute if data storage wither:options {toggleanimation:Bedrock} run data modify storage wither:options bedrockmode_string set value '"#13e800"'
function wither:dialog/advanced_show with storage wither:options
