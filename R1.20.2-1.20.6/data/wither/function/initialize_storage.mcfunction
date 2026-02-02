# Set initial storage values Enabled, Disabled
data modify storage wither:options toggletrophy set value Enabled
data modify storage wither:options toggledestruction set value Enabled
data modify storage wither:options togglehoming set value Enabled
data modify storage wither:options togglecharge set value Enabled
data modify storage wither:options toggledash set value Enabled
data modify storage wither:options toggleboomtp set value Enabled
data modify storage wither:options togglespawns set value Enabled
data modify storage wither:options toggleweather set value Enabled
<<<<<<< Updated upstream:R1.19.4-1.20.1/data/wither/functions/initialize_storage.mcfunction

=======
>>>>>>> Stashed changes:R1.20.2-1.20.6/data/wither/function/initialize_storage.mcfunction

# Animations 0 = enabled, 1 = disabled, 2 = bedrock
data modify storage wither:options toggleanimation set value Default

# Marks storage as initialized if this is set to 2 it'll just re-apply default settings [changes on updates that require data to be modified]
# Use if you want to persist with the default settings
data modify storage wither:options initialized set value 2
