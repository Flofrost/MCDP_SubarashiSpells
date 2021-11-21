scoreboard players add @s counter 1
execute as @e[distance=..3.5,tag=!laser1,type=!#spell_main:soulless,tag=!from_spell] at @s run function spells:damage_plus
particle end_rod ^ ^ ^ 0 0 0 0.01 2 force
particle firework ^ ^ ^ 0 0 0 0.1 3 force
execute unless score @s counter matches 200.. positioned ^ ^ ^-1 run function spells:laser1_raycast
execute if score @s counter matches 200.. run scoreboard players reset @s counter