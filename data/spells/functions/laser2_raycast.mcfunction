kill @e[distance=..6,tag=!laser2,type=!#spell_main:soulless,tag=!from_spell]
particle end_rod ^ ^ ^ 0 0 0 0.1 5 force
particle dust 1 1 1 10 ^ ^ ^ 0 0 0 0.1 10 force
particle lava ^ ^ ^ 0 0 0 0.1 5 force
summon tnt ~ ~ ~ {Tags:["laser2","from_spell"]}
execute unless entity @s[distance=151..] positioned ^ ^ ^-1 run function spells:laser2_raycast
