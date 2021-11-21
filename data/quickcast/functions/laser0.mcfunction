tag @s add laser0

particle end_rod ^-0.5 ^0.8 ^ 0 0 0 0.01 2

scoreboard players reset @s counter

execute positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:laser0_raycast
playsound entity.player.attack.sweep master @a ~ ~ ~ 3 2
execute store result score @s sublevel run scoreboard players get spells.laser0 sublevel

tag @s remove laser0