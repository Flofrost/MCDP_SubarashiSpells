effect give @s slowness 1 3 true
effect give @s jump_boost 1 253 true
particle reverse_portal ~ ~ ~ 0 0 0 0.07 2
scoreboard players reset @s counter

kill @e[type=witch,nbt={NoAI:1b},distance=..10]

execute as @s[tag=explosion0] at @s run function spells:explosion0_loop
execute as @s[tag=explosion1] at @s run function spells:explosion1_loop
execute as @s[tag=fire0] at @s run function spells:fire0_loop
execute as @s[tag=fire1] at @s run function spells:fire1_loop
execute as @s[tag=fire2] at @s run function spells:fire2_loop
execute as @s[tag=water2] at @s run function spells:water2_loop
execute as @s[tag=laser0] at @s run function spells:laser0_loop
execute as @s[tag=laser1] at @s run function spells:laser1_loop
execute as @s[tag=laser2] at @s run function spells:laser2_loop
execute as @s[tag=steal] at @s run function spells:steal_loop
execute as @s[tag=switch] at @s run function spells:switch_loop
execute as @s[tag=reflect] at @s run function spells:reflect_loop
execute as @s[tag=heal0] at @s run function spells:heal0_loop
execute as @s[tag=bless] at @s run function spells:bless_loop
execute as @s[tag=ice1] at @s run function spells:ice1_loop
execute as @s[tag=lightning0] at @s run function spells:lightning0_loop
execute as @s[tag=lightning1] at @s run function spells:lightning1_loop
execute as @s[tag=lightning2] at @s run function spells:lightning2_loop
execute as @s[tag=tree0] at @s run function spells:tree0_loop
execute as @s[tag=tree1] at @s run function spells:tree1_loop
execute as @s[tag=tree2] at @s run function spells:tree2_loop
execute as @s[tag=succ] at @s run function spells:succ_loop
execute as @s[tag=bridge] at @s run function spells:bridge_loop
execute as @s[tag=tenta,tag=!tentashot] at @s run function spells:tenta_loop