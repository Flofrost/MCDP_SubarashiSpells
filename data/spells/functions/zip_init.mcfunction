tag @s remove casting
execute store result score @s sublevel run scoreboard players get spells.zip sublevel

execute unless data entity @s SelectedItem.tag.zip run summon item ~ ~ ~ {Item:{id:"carrot_on_a_stick",Count:1,tag:{zip:1b,Tags:["quickcast"],CustomModelData:24,display:{Name:'{"text":"Rename Me!"}',Lore:['{"text":"Retrieve the saved inventory.","color":"white"}','{"text":"Cost: 23xp","color":"green"}','{"text":"The Pay to Win version of kepInventory.","italic":true,"color":"gray"}','{"text":"Zipped Inventory"}']},HideFlags:1,Enchantments:[{id:"binding_curse",lvl:1}]}},Tags:["zip","from_spell"]}
execute unless data entity @s SelectedItem.tag.zip run data modify entity @e[type=item,tag=zip,sort=nearest,limit=1] Item.tag.Inventory set from entity @s Inventory

execute if data entity @s SelectedItem.tag.zip run summon item ~ ~ ~ {Item:{id:"stone",Count:1},Tags:["from_spell","zip"],PickupDelay:2}
execute if data entity @s SelectedItem.tag.zip run data modify entity @e[type=item,tag=zip,sort=nearest,limit=1] Item set from entity @s SelectedItem
execute if data entity @s SelectedItem.tag.zip as @e[type=item,tag=zip,sort=nearest,limit=1] at @s run function spells:zip_loop
execute if data entity @s SelectedItem.tag.zip run replaceitem entity @s weapon.mainhand air