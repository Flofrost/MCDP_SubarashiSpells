scoreboard players add @e[type=zombie,tag=tree0,nbt=!{NoAI:1b},scores={counter=0..}] counter 1
execute at @e[type=zombie,tag=tree0,scores={counter=1..}] run playsound minecraft:block.grass.break master @a ~ ~ ~ 2 1
execute at @e[type=zombie,tag=tree0,scores={counter=1..}] run particle totem_of_undying ~ ~2.5 ~ 0.5 1.5 0.5 0.5 30 force
execute as @e[type=zombie,tag=tree0,scores={counter=1}] at @s run fill ~ ~ ~ ~ ~4 ~ oak_log
execute as @e[type=zombie,tag=tree0,scores={counter=2}] at @s run fill ~-1 ~5 ~-1 ~1 ~5 ~1 oak_leaves keep
execute as @e[type=zombie,tag=tree0,scores={counter=3}] at @s run fill ~ ~6 ~-1 ~ ~6 ~1 oak_leaves keep
execute as @e[type=zombie,tag=tree0,scores={counter=3}] at @s run fill ~-1 ~6 ~ ~1 ~6 ~ oak_leaves keep
execute as @e[type=zombie,tag=tree0,scores={counter=4}] at @s run fill ~-2 ~3 ~-1 ~2 ~4 ~1 oak_leaves keep
execute as @e[type=zombie,tag=tree0,scores={counter=4}] at @s run fill ~-1 ~3 ~-2 ~1 ~4 ~2 oak_leaves keep
execute as @e[type=zombie,tag=tree0,scores={counter=4}] at @s run tp @s ~ ~-100 ~
execute as @e[type=zombie,tag=tree0,scores={counter=4}] at @s run kill @s
execute if entity @e[type=zombie,tag=tree0] run schedule function spells:tree0_animation 1s