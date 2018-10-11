execute as @a[nbt={Inventory:[{id:"minecraft:cave_spider_spawn_egg"}]}] run function holycube_magnet:logic/replace_item
execute as @a[nbt={SelectedItem:{id:"minecraft:compass",tag:{Enchantments:[{id:"minecraft:aqua_affinity"}]}}}] at @s if block ~ ~ ~ #holycube_magnet:waterlogged run function holycube_magnet:logic/apply
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:compass",tag:{Enchantments:[{id:"minecraft:aqua_affinity"}]}}]}] at @s if block ~ ~ ~ #holycube_magnet:waterlogged run function holycube_magnet:logic/apply

execute as @e[type=minecraft:item,tag=!VW_Magnet,nbt={NoGravity:true}] run data merge entity @s {NoGravity:0}
tag @e[tag=VW_Magnet] remove VW_Magnet
