tag @s add lightning1
scoreboard players set @s cast 1

particle enchanted_hit ^-0.5 ^0.8 ^ 0 0 0 0.5 3

weather thunder 60
execute positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:lightning1_raycast
playsound item.armor.equip_netherite master @a ~ ~ ~ 1 0.5
execute store result score @s sublevel run scoreboard players get spells.lightning1 sublevel

tag @s remove lightning1