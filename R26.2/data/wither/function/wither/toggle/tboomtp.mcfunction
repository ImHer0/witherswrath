# Disabled -> Enabled
execute if data storage wither:options {toggleboomtp:"Disabled"} run return run function wither:wither/toggle/tboomtpon

# Enabled -> Disabled
execute if data storage wither:options {toggleboomtp:"Enabled"} run return run function wither:wither/toggle/tboomtpoff
