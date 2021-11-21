tag @s remove casting
execute store result score @s sublevel run scoreboard players get spells.heal1 sublevel

effect give @e[distance=..10] instant_health 1 120 true
effect give @e[distance=..10] saturation 1 120 true

particle heart ^ ^ ^ 5 0 5 0.1 150 force
playsound entity.evoker.prepare_summon master @a ^ ^ ^ 1 2
playsound entity.evoker.prepare_summon master @a ^ ^ ^ 1 1.8
playsound entity.evoker.prepare_summon master @a ^ ^ ^ 1 1.5