fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace #spell_main:empty
execute positioned ^ ^ ^-3 unless entity @s[distance=20..] run function spells:water1_raycast