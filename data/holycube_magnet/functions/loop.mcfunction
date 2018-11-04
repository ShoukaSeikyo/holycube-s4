execute as @a[nbt={Inventory:[{id:"minecraft:cave_spider_spawn_egg"}]}] run function holycube_magnet:replace_item
execute as @a[nbt={SelectedItem:{id:"minecraft:compass",tag:{Enchantments:[{id:"minecraft:aqua_affinity"}]}}}] at @s if block ~ ~ ~ #holycube_magnet:waterlogged run function holycube_magnet:apply
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:compass",tag:{Enchantments:[{id:"minecraft:aqua_affinity"}]}}]}] at @s if block ~ ~ ~ #holycube_magnet:waterlogged run function holycube_magnet:apply

execute as @e[type=minecraft:item,tag=!vw_magnet,nbt={NoGravity:true}] run data merge entity @s {NoGravity:0}
tag @e[tag=vw_magnet] remove vw_magnet
tag @e[tag=vw_magneted] remove vw_magneted
