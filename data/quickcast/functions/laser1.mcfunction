tag @s add laser1

particle end_rod ^-0.5 ^0.8 ^ 0 0 0 0.01 2
particle firework ^-0.5 ^0.8 ^ 0 0 0 0.1 1

scoreboard players reset @s counter

execute positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:laser1_raycast
playsound entity.player.attack.sweep master @a ~ ~ ~ 3 1
playsound entity.player.attack.nodamage master @a ~ ~ ~ 3 2
execute store result score @s sublevel run scoreboard players get spells.laser1 sublevel

tag @s remove laser1