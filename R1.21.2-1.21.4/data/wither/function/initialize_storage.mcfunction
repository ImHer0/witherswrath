# Set initial storage values 1 = enabled, 0 = disabled
data modify storage wither:options toggletrophy set value 1 
data modify storage wither:options toggledestruction set value 1
data modify storage wither:options togglehoming set value 1
data modify storage wither:options togglecharge set value 1
data modify storage wither:options toggledash set value 1
data modify storage wither:options toggleboomtp set value 1
data modify storage wither:options togglespawns set value 1

# Animations 0 = enabled, 1 = disabled, 2 = bedrock (yeah, I know I swapped the values)
data modify storage wither:options toggleanimation set value 0

# Marks storage as initialized if this is set to 1 it'll just re-apply default settings
# Use if you want to persist with the default settings
data modify storage wither:options initialized set value 1
