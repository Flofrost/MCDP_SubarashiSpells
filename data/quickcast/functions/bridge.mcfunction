tag @s add bridge

particle block dirt ^-0.5 ^0.8 ^ 0 0 0 0.01 2

execute positioned ^ ^ ^1 facing entity @s feet run function spells:bridge_raycast
playsound minecraft:block.composter.fill_success master @a ~ ~ ~ 1 1.5
execute store result score @s sublevel run scoreboard players get spells.bridge sublevel

tag @s remove bridge