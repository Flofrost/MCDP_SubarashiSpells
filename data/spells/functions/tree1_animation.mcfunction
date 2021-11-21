scoreboard players add @e[type=zombie,tag=tree1,nbt=!{NoAI:1b},scores={counter=0..}] counter 1
execute at @e[type=zombie,tag=tree1,nbt=!{NoAI:1b}] as @e[distance=..6] at @s run effect give @s slowness 1 5 true
execute at @e[type=zombie,tag=tree1,nbt=!{NoAI:1b}] as @e[distance=..6] at @s run effect give @s jump_boost 1 252 true
execute at @e[type=zombie,tag=tree1,nbt=!{NoAI:1b}] as @e[distance=..6] at @s run effect give @s wither 1 2 true
execute at @e[type=zombie,tag=tree1,nbt=!{NoAI:1b}] as @e[distance=..6] at @s run particle block spruce_leaves ~ ~1 ~ 0.2 0.5 0.2 0.5 10
execute at @e[type=zombie,tag=tree1,scores={counter=1..}] run playsound minecraft:block.grass.break master @a ~ ~ ~ 2 0.7
execute at @e[type=zombie,tag=tree1,scores={counter=1..}] run particle totem_of_undying ~ ~5 ~ 1.5 3 1.5 0.5 70 force
execute at @e[type=zombie,tag=tree1,scores={counter=1..}] run particle happy_villager ~ ~5 ~ 1.5 3 1.5 0.5 70 force
execute as @e[type=zombie,tag=tree1,scores={counter=1}] at @s run fill ~ ~ ~ ~1 ~10 ~1 spruce_log
execute as @e[type=zombie,tag=tree1,scores={counter=1}] at @s run fill ~ ~11 ~ ~1 ~12 ~1 spruce_leaves
execute as @e[type=zombie,tag=tree1,scores={counter=2}] at @s run fill ~-1 ~5 ~ ~2 ~10 ~1 spruce_leaves keep
execute as @e[type=zombie,tag=tree1,scores={counter=2}] at @s run fill ~ ~5 ~-1 ~1 ~10 ~2 spruce_leaves keep
execute as @e[type=zombie,tag=tree1,scores={counter=3}] at @s run fill ~-1 ~6 ~-1 ~2 ~9 ~2 spruce_leaves keep
execute as @e[type=zombie,tag=tree1,scores={counter=4}] at @s run fill ~-2 ~6 ~ ~3 ~9 ~1 spruce_leaves keep
execute as @e[type=zombie,tag=tree1,scores={counter=4}] at @s run fill ~ ~6 ~-2 ~1 ~9 ~3 spruce_leaves keep
execute as @e[type=zombie,tag=tree1,scores={counter=5}] at @s run fill ~-2 ~6 ~-2 ~3 ~6 ~3 spruce_leaves keep
execute as @e[type=zombie,tag=tree1,scores={counter=5}] at @s run fill ~ ~6 ~-3 ~1 ~6 ~4 spruce_leaves keep
execute as @e[type=zombie,tag=tree1,scores={counter=5}] at @s run fill ~-3 ~6 ~ ~4 ~6 ~1 spruce_leaves keep
execute as @e[type=zombie,tag=tree1,scores={counter=5}] at @s run tp @s ~ ~-100 ~
execute as @e[type=zombie,tag=tree1,scores={counter=5}] at @s run kill @s
execute if entity @e[type=zombie,tag=tree1] run schedule function spells:tree1_animation 1s