scoreboard players reset @s[tag=casting] spell
title @s[tag=casting] actionbar [{"text":"A spell is already active.","color":"red"}]

tag @s[tag=!casting] add casting

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{Tags:["quickcast"]}}]}] run function quickcast:get_quickcast

execute if score @s spell matches 1 if score @s level >= spells.explosion0 sublevel run tag @s add explosion0
execute if score @s spell matches 1 if score @s level >= spells.explosion0 sublevel run function spells:explosion0_init
execute if score @s spell matches 1 unless score @s level >= spells.explosion0 sublevel run tag @s add cancel_cast

execute if score @s spell matches 2 if score @s level >= spells.explosion1 sublevel run tag @s add explosion1
execute if score @s spell matches 2 if score @s level >= spells.explosion1 sublevel run function spells:explosion1_init
execute if score @s spell matches 2 unless score @s level >= spells.explosion1 sublevel run tag @s add cancel_cast

execute if score @s spell matches 3 if score @s level >= spells.fire0 sublevel run tag @s add fire0
execute if score @s spell matches 3 if score @s level >= spells.fire0 sublevel run function spells:fire0_init
execute if score @s spell matches 3 unless score @s level >= spells.fire0 sublevel run tag @s add cancel_cast

execute if score @s spell matches 4 if score @s level >= spells.fire1 sublevel run tag @s add fire1
execute if score @s spell matches 4 if score @s level >= spells.fire1 sublevel run function spells:fire1_init
execute if score @s spell matches 4 unless score @s level >= spells.fire1 sublevel run tag @s add cancel_cast

execute if score @s spell matches 5 if score @s level >= spells.fire2 sublevel run tag @s add fire2
execute if score @s spell matches 5 if score @s level >= spells.fire2 sublevel run function spells:fire2_init
execute if score @s spell matches 5 unless score @s level >= spells.fire2 sublevel run tag @s add cancel_cast

execute if score @s spell matches 6 if score @s level >= spells.laser0 sublevel run tag @s add laser0
execute if score @s spell matches 6 if score @s level >= spells.laser0 sublevel run function spells:laser0_init
execute if score @s spell matches 6 unless score @s level >= spells.laser0 sublevel run tag @s add cancel_cast

execute if score @s spell matches 7 if score @s level >= spells.laser1 sublevel run tag @s add laser1
execute if score @s spell matches 7 if score @s level >= spells.laser1 sublevel run function spells:laser1_init
execute if score @s spell matches 7 unless score @s level >= spells.laser1 sublevel run tag @s add cancel_cast

execute if score @s spell matches 8 if score @s level >= spells.laser2 sublevel run tag @s add laser2
execute if score @s spell matches 8 if score @s level >= spells.laser2 sublevel run function spells:laser2_init
execute if score @s spell matches 8 unless score @s level >= spells.laser2 sublevel run tag @s add cancel_cast

execute if score @s spell matches 9 if score @s level >= spells.steal sublevel run tag @s add steal
execute if score @s spell matches 9 if score @s level >= spells.steal sublevel run function spells:steal_init
execute if score @s spell matches 9 unless score @s level >= spells.steal sublevel run tag @s add cancel_cast

execute if score @s spell matches 10 if score @s level >= spells.lightning0 sublevel run tag @s add lightning0
execute if score @s spell matches 10 if score @s level >= spells.lightning0 sublevel run function spells:lightning0_init
execute if score @s spell matches 10 unless score @s level >= spells.lightning0 sublevel run tag @s add cancel_cast

execute if score @s spell matches 11 if score @s level >= spells.lightning1 sublevel run tag @s add lightning1
execute if score @s spell matches 11 if score @s level >= spells.lightning1 sublevel run function spells:lightning1_init
execute if score @s spell matches 11 unless score @s level >= spells.lightning1 sublevel run tag @s add cancel_cast

execute if score @s spell matches 12 if score @s level >= spells.lightning2 sublevel run tag @s add lightning2
execute if score @s spell matches 12 if score @s level >= spells.lightning2 sublevel run function spells:lightning2_init
execute if score @s spell matches 12 unless score @s level >= spells.lightning2 sublevel run tag @s add cancel_cast

execute if score @s[tag=morph0] spell matches 13 run effect clear @s speed
execute if score @s[tag=morph0] spell matches 13 run effect clear @s jump_boost
execute if score @s[tag=morph0] spell matches 13 run tag @s remove casting
execute if score @s[tag=!morph0] spell matches 13 if score @s level >= spells.morph0 sublevel store result score @s sublevel run scoreboard players get spells.morph0 sublevel
execute if score @s[tag=!morph0] spell matches 13 if score @s level >= spells.morph0 sublevel run function spells:morph0_init
execute if score @s[tag=!morph0] spell matches 13 unless score @s level >= spells.morph0 sublevel run tag @s add cancel_cast

execute if score @s[tag=morph1] spell matches 14 run effect clear @s dolphins_grace
execute if score @s[tag=morph1] spell matches 14 run effect clear @s conduit_power
execute if score @s[tag=morph1] spell matches 14 run tag @s remove casting
execute if score @s[tag=!morph1] spell matches 14 if score @s level >= spells.morph1 sublevel store result score @s sublevel run scoreboard players get spells.morph1 sublevel
execute if score @s[tag=!morph1] spell matches 14 if score @s level >= spells.morph1 sublevel run function spells:morph1_init
execute if score @s[tag=!morph1] spell matches 14 unless score @s level >= spells.morph1 sublevel run tag @s add cancel_cast

execute if score @s[tag=morph2] spell matches 15 run effect clear @s speed
execute if score @s[tag=morph2] spell matches 15 run effect clear @s jump_boost
execute if score @s[tag=morph2] spell matches 15 run effect clear @s dolphins_grace
execute if score @s[tag=morph2] spell matches 15 run effect clear @s conduit_power
execute if score @s[tag=morph2] spell matches 15 run tag @s remove casting
execute if score @s[tag=!morph2] spell matches 15 if score @s level >= spells.morph2 sublevel store result score @s sublevel run scoreboard players get spells.morph2 sublevel
execute if score @s[tag=!morph2] spell matches 15 if score @s level >= spells.morph2 sublevel run function spells:morph2_init
execute if score @s[tag=!morph2] spell matches 15 unless score @s level >= spells.morph2 sublevel run tag @s add cancel_cast

execute if score @s spell matches 16 if score @s level >= spells.coffee sublevel store result score @s sublevel run scoreboard players get spells.coffee sublevel
execute if score @s spell matches 16 if score @s level >= spells.coffee sublevel run function spells:coffee_init
execute if score @s spell matches 16 unless score @s level >= spells.coffee sublevel run tag @s add cancel_cast

execute if score @s spell matches 17 if score @s level >= spells.tree0 sublevel run tag @s add tree0
execute if score @s spell matches 17 if score @s level >= spells.tree0 sublevel run function spells:tree0_init
execute if score @s spell matches 17 unless score @s level >= spells.tree0 sublevel run tag @s add cancel_cast

execute if score @s spell matches 18 if score @s level >= spells.tree1 sublevel run tag @s add tree1
execute if score @s spell matches 18 if score @s level >= spells.tree1 sublevel run function spells:tree1_init
execute if score @s spell matches 18 unless score @s level >= spells.tree1 sublevel run tag @s add cancel_cast

execute if score @s spell matches 19 if score @s level >= spells.tree2 sublevel run tag @s add tree2
execute if score @s spell matches 19 if score @s level >= spells.tree2 sublevel run function spells:tree2_init
execute if score @s spell matches 19 unless score @s level >= spells.tree2 sublevel run tag @s add cancel_cast

execute if score @s spell matches 20 if score @s level >= spells.switch sublevel run tag @s add switch
execute if score @s spell matches 20 if score @s level >= spells.switch sublevel run function spells:switch_init
execute if score @s spell matches 20 unless score @s level >= spells.switch sublevel run tag @s add cancel_cast

execute if score @s spell matches 21 if score @s level >= spells.reflect sublevel store result score @s sublevel run scoreboard players get spells.reflect sublevel
execute if score @s spell matches 21 if score @s level >= spells.reflect sublevel run effect give @s resistance 10 2 true
execute if score @s spell matches 21 if score @s level >= spells.reflect sublevel run tag @s add reflect
execute if score @s spell matches 21 unless score @s level >= spells.reflect sublevel run tag @s add cancel_cast

execute if score @s spell matches 22 if score @s level >= spells.water0 sublevel run function spells:water0_init
execute if score @s spell matches 22 unless score @s level >= spells.water0 sublevel run tag @s add cancel_cast

execute if score @s spell matches 23 if score @s level >= spells.water1 sublevel run function spells:water1_init
execute if score @s spell matches 23 unless score @s level >= spells.water1 sublevel run tag @s add cancel_cast

execute if score @s spell matches 24 if score @s level >= spells.zip sublevel run function spells:zip_init
execute if score @s spell matches 24 unless score @s level >= spells.zip sublevel run tag @s add cancel_cast

execute if score @s spell matches 25 if score @s level >= spells.ice0 sublevel run function spells:ice0_init
execute if score @s spell matches 25 unless score @s level >= spells.ice0 sublevel run tag @s add cancel_cast

execute if score @s spell matches 26 if score @s level >= spells.ice1 sublevel run tag @s add ice1
execute if score @s spell matches 26 if score @s level >= spells.ice1 sublevel run function spells:ice1_init
execute if score @s spell matches 26 unless score @s level >= spells.ice1 sublevel run tag @s add cancel_cast

execute if score @s spell matches 27 if score @s level >= spells.bridge sublevel run tag @s add bridge
execute if score @s spell matches 27 if score @s level >= spells.bridge sublevel run function spells:bridge_init
execute if score @s spell matches 27 unless score @s level >= spells.bridge sublevel run tag @s add cancel_cast

execute if score @s spell matches 28 run function spells:teleport_init

execute if score @s spell matches 29 if score @s level >= spells.locate sublevel run function spells:locate_init
execute if score @s spell matches 29 unless score @s level >= spells.locate sublevel run tag @s add cancel_cast

execute if score @s spell matches 30 if score @s level >= spells.bless sublevel run tag @s add bless
execute if score @s spell matches 30 if score @s level >= spells.bless sublevel run function spells:bless_init
execute if score @s spell matches 30 unless score @s level >= spells.bless sublevel run tag @s add cancel_cast

execute if score @s spell matches 31 if score @s level >= spells.horticulture sublevel store result score @s sublevel run scoreboard players get spells.horticulture sublevel
execute if score @s spell matches 31 if score @s level >= spells.horticulture sublevel run gamerule randomTickSpeed 10000
execute if score @s spell matches 31 if score @s level >= spells.horticulture sublevel run particle totem_of_undying ~ ~1.6 ~ 0 0 0 0.5 30
execute if score @s spell matches 31 if score @s level >= spells.horticulture sublevel run playsound block.enchantment_table.use master @a ~ ~ ~ 1 1.5
execute if score @s spell matches 31 if score @s level >= spells.horticulture sublevel run tag @s remove casting
execute if score @s spell matches 31 if score @s level >= spells.horticulture sublevel run schedule function spells:horticulture_stop 7s
execute if score @s spell matches 31 unless score @s level >= spells.horticulture sublevel run tag @s add cancel_cast

execute if score @s spell matches 32 if score @s level >= spells.heal0 sublevel run tag @s add heal0
execute if score @s spell matches 32 if score @s level >= spells.heal0 sublevel run function spells:heal0_init
execute if score @s spell matches 32 unless score @s level >= spells.heal0 sublevel run tag @s add cancel_cast

execute if score @s spell matches 33 if score @s level >= spells.house sublevel run function spells:house_init
execute if score @s spell matches 33 unless score @s level >= spells.house sublevel run tag @s add cancel_cast

execute if score @s spell matches 34 if score @s level >= spells.tenta sublevel run tag @s add tenta
execute if score @s spell matches 34 if score @s level >= spells.tenta sublevel run function spells:tenta_init
execute if score @s spell matches 34 unless score @s level >= spells.tenta sublevel run tag @s add cancel_cast

execute if score @s spell matches 35 run tag @s add succ
execute if score @s spell matches 35 run function spells:succ_init

execute if score @s spell matches 36 if score @s level >= spells.heal1 sublevel run function spells:heal1_init
execute if score @s spell matches 36 unless score @s level >= spells.heal1 sublevel run tag @s add cancel_cast

title @s[tag=cancel_cast,tag=casting] actionbar [{"text":"Not enough!","color":"red"}]
tag @s[tag=cancel_cast,tag=casting] remove casting
tag @s remove cancel_cast