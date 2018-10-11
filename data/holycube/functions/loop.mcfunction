#player in vehicle
execute as @a store success score @s hc4.vehicle run data get entity @s RootVehicle
execute as @a[scores={hc4.vehicle=1}] store result score @s hc4.vehicleR run data get entity @s Rotation[0]
execute as @a[scores={hc4.vehicle=1}] store result score @s hc4.vehicleY run data get entity @s Rotation[1]

execute as @a store result score @s hc4.posX run data get entity @s Pos[0]
execute as @a store result score @s hc4.posY run data get entity @s Pos[1]
execute as @a store result score @s hc4.posZ run data get entity @s Pos[2]

execute store result score #HC4 hc4.time run time query daytime
