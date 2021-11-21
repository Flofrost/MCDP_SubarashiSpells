execute if data entity @s Item.tag.Inventory[0] run summon item ~ ~ ~ {Item:{id:"stone",Count:1},Tags:["from_spell","unzip"],PickupDelay:2}
execute if data entity @s Item.tag.Inventory[0] run data modify entity @e[type=item,tag=unzip,sort=nearest,limit=1] Item set from entity @s Item.tag.Inventory[0]
execute if data entity @s Item.tag.Inventory[0] run tag @e[type=item,tag=unzip,sort=nearest,limit=1] remove unzip
execute if data entity @s Item.tag.Inventory[0] run data remove entity @s Item.tag.Inventory[0]
execute if data entity @s Item.tag.Inventory[0] run function spells:zip_loop
execute unless data entity @s Item.tag.Inventory[0] run kill