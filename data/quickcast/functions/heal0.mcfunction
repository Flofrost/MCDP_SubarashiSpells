tag @s add heal

scoreboard players add @s cast 1

particle dust 1 0 0.2 1 ^-0.5 ^0.8 ^ 0.1 0.1 0.1 0.5 6

execute positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:heal0_raycast
playsound entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
execute store result score @s sublevel run scoreboard players get spells.heal0 sublevel

tag @s remove heal