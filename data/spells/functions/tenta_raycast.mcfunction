execute at @e[tag=!tenta,distance=..2,type=!#spell_main:soulless,tag=!from_spell] run particle dust 0 1 0 2 ~ ~2.3 ~ 0 0 0 0.1 1 force
execute as @s[scores={cast=1..}] as @e[tag=!tenta,distance=..2,type=!#spell_main:soulless,tag=!from_spell] run tag @s add tentarget
execute unless entity @s[distance=171..] if block ^ ^ ^ #spell_main:empty positioned ^ ^ ^-1 run function spells:tenta_raycast