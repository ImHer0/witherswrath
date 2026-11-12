# Macro: j, axis, item, s, p, y0. Ran at the Wither: the block starts on its disk spot but drawn down at the ground
$summon minecraft:item_display $(p) {Tags:["wIntro","wOrbit","wRise","wB$(j)","$(axis)"],item:{id:"$(item)",count:1},teleport_duration:2,Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,$(y0)f,0f],scale:[$(s)f,$(s)f,$(s)f]}}
