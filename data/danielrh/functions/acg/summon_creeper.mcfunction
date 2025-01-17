# Create creeper tagged as Under Construction
summon minecraft:creeper ~ ~ ~ {ignited: true, Fuse: 0b, Tags: ["acg_bomb", "acg_uc"]}

# A powered creeper is represented by effect 26 (luck) being ambient
data modify entity @e[type=minecraft:creeper,tag=acg_uc,limit=1,sort=nearest] powered set from entity @s Effects[{Id: 26}].Ambient

# Cleanup
tag @e[type=minecraft:creeper,tag=acg_uc,limit=1,sort=nearest] remove acg_ug
data remove entity @s Effects[{Id:26}]
data remove entity @s Effects[{Id:27}]
execute unless data entity @s Effects run kill @s
