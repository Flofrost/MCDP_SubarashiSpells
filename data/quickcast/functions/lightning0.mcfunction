tag @s add lightning0
scoreboard players set @s cast 1

particle enchanted_hit ^-0.5 ^0.8 ^ 0 0 0 0.1 2

execute positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:lightning0_raycast
execute run playsound item.trident.throw master @a ~ ~ ~ 3 0.1
execute store result score @s sublevel run scoreboard players get spells.lightning0 sublevel

tag @s remove lightning0