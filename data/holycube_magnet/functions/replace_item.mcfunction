clear @s minecraft:cave_spider_spawn_egg 1
give @s minecraft:compass{Enchantments:[{id:"minecraft:aqua_affinity",lvl:1}],display:{Lore:["Ne fonctionne que dans l'eau."]}}

execute as @s[nbt={Inventory:[{id:"minecraft:cave_spider_spawn_egg"}]}] run function holycube_magnet:replace_item
