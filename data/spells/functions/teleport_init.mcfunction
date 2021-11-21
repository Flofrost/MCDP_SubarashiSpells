execute if score @s level matches 2.. if data entity @s SelectedItem.tag.key run tag @s remove casting
execute if score @s level matches 2.. if data entity @s SelectedItem.tag.key run xp add @s -2 levels
execute if score @s level matches 2.. if data entity @s SelectedItem.tag.key run summon area_effect_cloud ~ ~ ~ {Tags:["from_spell","key"]}
execute if score @s level matches 2.. if data entity @s SelectedItem.tag.key run scoreboard players operation @e[type=area_effect_cloud,tag=key] id = @s id
execute if score @s level matches 2.. as @e[type=area_effect_cloud,tag=key,sort=nearest,limit=1] if data entity @p SelectedItem.tag.key run function spells:teleport_the_other_one
execute unless score @s level matches 2.. if data entity @s SelectedItem.tag.key run tag @s add cancel_cast

execute if score @s level matches 8.. unless data entity @s SelectedItem.tag.key run tag @s remove casting
execute if score @s level matches 8.. unless data entity @s SelectedItem.tag.key store result score @s sublevel run scoreboard players get spells.teleport sublevel
execute if score @s level matches 8.. unless data entity @s SelectedItem.tag.key run summon item ~ ~ ~ {Item:{id:"carrot_on_a_stick",Count:1,tag:{key:1b,Tags:["quickcast"],CustomModelData:28,display:{Name:'{"text":"Rename Me!"}',Lore:['{"text":"Teleport to the saved location.","color":"white"}','{"text":"Cost: 2xp","color":"green"}','{"text":"Use the right key in the right dimention!","color":"#F0C800"}','{"text":"Ah $#![, here we go again...","italic":true,"color":"gray"}','{"text":"Teleportation Key"}']},HideFlags:1,Enchantments:[{id:"binding_curse",lvl:1}]}},Tags:["key","from_spell"],Age:0,PickupDelay:1}
execute if score @s level matches 8.. unless data entity @s SelectedItem.tag.key run data modify entity @e[type=item,tag=key,sort=nearest,limit=1] Item.tag.Pos set from entity @s Pos
execute if score @s level matches 8.. unless data entity @s SelectedItem.tag.key run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1.7
execute if score @s level matches 8.. unless data entity @s SelectedItem.tag.key run particle reverse_portal ~ ~1 ~ 0 1 0 0.1 30
execute unless score @s level matches 8.. unless data entity @s SelectedItem.tag.key run tag @s add cancel_cast