scoreboard players add @s counter 1
execute unless score @s counter >= @s X positioned ^ ^ ^-1 run function spells:explosion0_explosion
execute if score @s counter >= @s X unless block ^ ^ ^-3 #spell_main:empty run summon tnt
execute if score @s counter >= @s X run kill @e[type=item,tag=!from_spell,distance=..7]
execute if score @s counter >= @s X run particle flame ~ ~ ~ 1 1 1 0.001 10 force
execute if score @s counter >= @s X run particle dust 1 0.3 0 20 ~ ~ ~ 1 1 1 0.001 20 force
execute if score @s counter >= @s X run scoreboard players reset @s counter