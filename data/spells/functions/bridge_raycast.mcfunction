setblock ~ ~ ~ dirt destroy
particle explosion ^ ^ ^ 0 0 0 0.01 2 force
execute unless entity @s[distance=201..] positioned ^ ^ ^-1 if block ^ ^ ^-1 #spell_main:empty run function spells:bridge_raycast