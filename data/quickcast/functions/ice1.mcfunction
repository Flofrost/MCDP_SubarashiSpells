tag @s add ice1

scoreboard players add @s cast 1

particle firework ^-0.5 ^0.8 ^ 0.1 0.1 0.1 0.05 1
particle item_snowball ^-0.5 ^0.8 ^ 0.1 0.1 0.1 0.5 6

execute positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:ice1_raycast
playsound entity.zombie_villager.cure master @a ~ ~ ~ 1 0.4
execute store result score @s sublevel run scoreboard players get spells.ice1 sublevel

tag @s remove ice1