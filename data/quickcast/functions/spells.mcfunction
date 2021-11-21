execute store result score @s quickcast run data get entity @s SelectedItem.tag.CustomModelData

execute if score @s quickcast matches 3 if score @s level >= spells.fire0 sublevel run function quickcast:fire0
execute if score @s quickcast matches 3 unless score @s level >= spells.fire0 sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 4 if score @s level >= spells.fire1 sublevel run function quickcast:fire1
execute if score @s quickcast matches 4 unless score @s level >= spells.fire1 sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 6 if score @s level >= spells.laser0 sublevel run function quickcast:laser0
execute if score @s quickcast matches 6 unless score @s level >= spells.laser0 sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 7 if score @s level >= spells.laser1 sublevel run function quickcast:laser1
execute if score @s quickcast matches 7 unless score @s level >= spells.laser1 sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 9 if score @s level >= spells.steal sublevel run function quickcast:steal
execute if score @s quickcast matches 9 unless score @s level >= spells.steal sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 10 if score @s level >= spells.lightning0 sublevel run function quickcast:lightning0
execute if score @s quickcast matches 10 unless score @s level >= spells.lightning0 sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 11 if score @s level >= spells.lightning1 sublevel run function quickcast:lightning1
execute if score @s quickcast matches 11 unless score @s level >= spells.lightning1 sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 12 if score @s level >= spells.lightning2 sublevel run function quickcast:lightning2
execute if score @s quickcast matches 12 unless score @s level >= spells.lightning2 sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 13 run scoreboard players set @s spell 13

execute if score @s quickcast matches 14 run scoreboard players set @s spell 14

execute if score @s quickcast matches 15 run scoreboard players set @s spell 15

execute if score @s quickcast matches 16 run scoreboard players set @s spell 16

execute if score @s quickcast matches 17 if score @s level >= spells.tree0 sublevel run function quickcast:tree0
execute if score @s quickcast matches 17 unless score @s level >= spells.tree0 sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 18 if score @s level >= spells.tree1 sublevel run function quickcast:tree1
execute if score @s quickcast matches 18 unless score @s level >= spells.tree1 sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 19 if score @s level >= spells.tree2 sublevel run function quickcast:tree2
execute if score @s quickcast matches 19 unless score @s level >= spells.tree2 sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 20 if score @s level >= spells.switch sublevel run function quickcast:switch
execute if score @s quickcast matches 20 unless score @s level >= spells.switch sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 21 run scoreboard players set @s spell 21

execute if score @s quickcast matches 22 run scoreboard players set @s spell 22

execute if score @s quickcast matches 23 run scoreboard players set @s spell 23

execute if score @s quickcast matches 24 if score @s level >= spells.zip sublevel run function spells:zip_init
execute if score @s quickcast matches 24 unless score @s level >= spells.zip sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 25 run scoreboard players set @s spell 25

execute if score @s quickcast matches 26 if score @s level >= spells.ice1 sublevel run function quickcast:ice1
execute if score @s quickcast matches 26 unless score @s level >= spells.ice1 sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 27 if score @s level >= spells.bridge sublevel run function quickcast:bridge
execute if score @s quickcast matches 27 unless score @s level >= spells.bridge sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 28 if score @s level matches 2.. run function spells:teleport_init
execute if score @s quickcast matches 28 unless score @s level matches 2.. run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 29 run scoreboard players set @s spell 29

execute if score @s quickcast matches 32 if score @s level >= spells.heal0 sublevel run function quickcast:heal0
execute if score @s quickcast matches 32 unless score @s level >= spells.heal0 sublevel run title @s actionbar {"text":"Not enough levels!","color":"red"}

execute if score @s quickcast matches 36 run scoreboard players set @s spell 36