tag @s add lightning2
scoreboard players set @s cast 1

particle enchanted_hit ^-0.5 ^0.8 ^ 0 0 0 0.5 6
particle crit ^-0.5 ^0.8 ^ 0 0 0 0.3 3

weather thunder 60
execute positioned ~ ~1.61 ~ positioned ^ ^ ^5 facing entity @s eyes run function spells:lightning2_raycast
playsound item.armor.equip_netherite master @a ~ ~ ~ 1 0.5
execute store result score @s sublevel run scoreboard players get spells.lightning2 sublevel

tag @s remove lightning2