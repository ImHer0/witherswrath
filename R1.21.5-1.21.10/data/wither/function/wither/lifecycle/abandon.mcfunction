# Ran when a new Wither appears but the previous fight's boss is gone: end that fight quietly (like vanished)
execute unless data storage wither:fight last run data modify storage wither:fight last set value {x:0,y:0,z:0}
function wither:wither/lifecycle/vanished with storage wither:fight last
