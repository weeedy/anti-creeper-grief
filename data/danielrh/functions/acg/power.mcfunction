# A powered creeper is represented by effect 26 (luck) being ambient

data modify entity @s ActiveEffects[{Id: 26}].Ambient set value true
tag @s add acg_powered
