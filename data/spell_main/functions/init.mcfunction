#xp boost
execute as @e[type=minecraft:experience_orb,tag=!ok] store result entity @s Value short 5 run data get entity @s Value
tag @e[type=experience_orb] add ok

#xp removal
execute as @a[scores={sublevel=1..}] run xp add @s -1 levels
scoreboard players remove @a[scores={sublevel=1..}] sublevel 1

#id system
execute as @a unless score @s id matches 0.. run scoreboard players set @s id 0
execute as @a[scores={id=0},sort=random,limit=1] run scoreboard players add dummy_player_id id 1
execute as @a[scores={id=0},sort=random,limit=1] run scoreboard players operation @s id = dummy_player_id id

#quick casting
execute as @a[scores={quickcast=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Tags:["quickcast"]}}}] at @s run function quickcast:spells

#spell redirector
execute as @a[scores={spell=1..},nbt={SelectedItem:{tag:{Tags:["spell_book"]}}}] at @s run function spell_main:spells
execute as @a[scores={spell=1..},nbt={SelectedItem:{tag:{Tags:["quickcast"]}}}] at @s run function spell_main:spells
execute as @a[tag=casting] at @s run function spells:effects
execute as @e[tag=passive] at @s run function spells:passive_effects 

#crafts and upgrades and recipes
execute if entity @a[predicate=spell_main:need_recipe] run function spell_main:recipes

execute as @e[scores={craft.spell_book=1..}] run function spell_main:give_book0
clear @a[scores={craft.spell_book=1..}] knowledge_book 1
scoreboard players remove @a[scores={craft.spell_book=1..}] craft.spell_book 1

execute as @a[scores={upgrade=1..},nbt={SelectedItem:{tag:{Tags:["spell_book"],Level:2}}}] if score @s level matches 10.. at @s run give @s carrot_on_a_stick{CustomModelData:1,display:{Name:'{"text":"Assing a Spell to Me!"}'},Tags:["quickcast"]}
execute as @a[scores={upgrade=1..},nbt={SelectedItem:{tag:{Tags:["spell_book"],Level:2}}}] if score @s level matches 10.. at @s run xp add @s -10 levels
execute as @a[scores={upgrade=1..},nbt={SelectedItem:{tag:{Tags:["spell_book"],Level:2}}}] unless score @s level matches 10.. run title @s actionbar [{"text":"Not enough levels.","color":"red"}]
execute as @a[scores={upgrade=1..},nbt={SelectedItem:{tag:{Tags:["spell_book"],Level:1}}}] if score @s level matches 50.. at @s run function spell_main:give_book2
execute as @a[scores={upgrade=1..},nbt={SelectedItem:{tag:{Tags:["spell_book"],Level:1}}}] unless score @s level matches 50.. run title @s actionbar [{"text":"Not enough levels.","color":"red"}]
execute as @a[scores={upgrade=1..},nbt={SelectedItem:{tag:{Tags:["spell_book"],Level:0}}}] if score @s level matches 25.. at @s run function spell_main:give_book1
execute as @a[scores={upgrade=1..},nbt={SelectedItem:{tag:{Tags:["spell_book"],Level:0}}}] unless score @s level matches 25.. run title @s actionbar [{"text":"Not enough levels.","color":"red"}]

#scores reset
scoreboard players reset @a spell
scoreboard players enable @a spell
scoreboard players reset @a upgrade
scoreboard players enable @a upgrade
scoreboard players reset @a cast
scoreboard players reset @a quickcast