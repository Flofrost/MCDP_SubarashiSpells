scoreboard players add @s counter 1
execute as @e[distance=..2,tag=!laser0,type=!#spell_main:soulless,tag=!from_spell] at @s run function spells:damage
particle end_rod ^ ^ ^ 0 0 0 0.01 2 force
execute unless score @s counter matches 100.. if block ^ ^ ^ #spell_main:empty positioned ^ ^ ^-1 run function spells:laser0_raycast