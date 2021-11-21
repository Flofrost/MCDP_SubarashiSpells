scoreboard players add @e[type=zombie,tag=tree2,nbt=!{NoAI:1b},scores={counter=0..}] counter 1
execute at @e[type=zombie,tag=tree2,nbt=!{NoAI:1b}] as @e[distance=..16] at @s run effect give @s slowness 1 225 true
execute at @e[type=zombie,tag=tree2,nbt=!{NoAI:1b}] as @e[distance=..16] at @s run effect give @s jump_boost 1 128 true
execute at @e[type=zombie,tag=tree2,nbt=!{NoAI:1b}] as @e[distance=..16] at @s run effect give @s wither 1 6 true
execute at @e[type=zombie,tag=tree2,nbt=!{NoAI:1b}] as @e[distance=..16] at @s run particle block dark_oak_leaves ~ ~1 ~ 0.3 0.7 0.3 0.5 50
execute at @e[type=zombie,tag=tree2,nbt=!{NoAI:1b}] as @e[distance=..16] at @s run particle totem_of_undying ~ ~1 ~ 0 0 0 0.3 10
execute at @e[type=zombie,tag=tree2,scores={counter=1..}] run playsound minecraft:block.grass.break master @a ~ ~ ~ 5 0.3
execute at @e[type=zombie,tag=tree2,scores={counter=1..}] run playsound minecraft:block.grass.break master @a ~ ~ ~ 5 1
execute at @e[type=zombie,tag=tree2,scores={counter=1..}] run particle totem_of_undying ~ ~7.5 ~ 3 5 3 0.5 180 force
execute at @e[type=zombie,tag=tree2,scores={counter=1..}] run particle happy_villager ~ ~7.5 ~ 3 5 3 0.5 180 force
execute as @e[type=zombie,tag=tree2,scores={counter=1}] at @s run fill ~-1 ~ ~-1 ~1 ~14 ~1 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=1}] at @s run fill ~-2 ~ ~ ~2 ~4 ~ dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=1}] at @s run fill ~ ~ ~-2 ~ ~4 ~2 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=1}] at @s run fill ~-2 ~10 ~-1 ~-2 ~14 ~-1 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=1}] at @s run fill ~2 ~10 ~1 ~2 ~14 ~1 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=1}] at @s run fill ~1 ~10 ~-2 ~1 ~14 ~-2 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=1}] at @s run fill ~-1 ~10 ~2 ~-1 ~14 ~2 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=1}] at @s run fill ~-2 ~11 ~-2 ~2 ~14 ~2 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=1}] at @s run fill ~-3 ~11 ~-1 ~3 ~14 ~1 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=1}] at @s run fill ~-1 ~11 ~-3 ~1 ~14 ~3 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=2}] at @s run fill ~-2 ~ ~-2 ~2 ~1 ~2 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=2}] at @s run fill ~-3 ~ ~-2 ~-3 ~ ~1 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=2}] at @s run fill ~3 ~ ~2 ~3 ~ ~-1 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=2}] at @s run fill ~-1 ~ ~-3 ~2 ~ ~-3 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=2}] at @s run fill ~1 ~ ~3 ~-2 ~ ~3 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=2}] at @s run fill ~-2 ~13 ~-2 ~2 ~14 ~2 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=2}] at @s run fill ~-2 ~12 ~ ~2 ~12 ~ dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=2}] at @s run fill ~ ~12 ~-2 ~ ~12 ~2 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run fill ~-3 ~ ~ ~3 ~1 ~ dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run fill ~ ~ ~-3 ~ ~1 ~3 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run fill ~-3 ~13 ~ ~3 ~14 ~ dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run fill ~ ~13 ~-3 ~ ~14 ~3 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run fill ~-2 ~15 ~-2 ~2 ~16 ~2 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^ ^ ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^ ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^1 ^3 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^ ^5 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^ ^ ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run fill ^ ^15 ^3 ^-1 ^16 ^3 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run fill ^-1 ^12 ^3 ^-1 ^14 ^3 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^14 ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^13 ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^14 ^5 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run tp @s ^ ^ ^ facing ^1 ^ ^
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^ ^ ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^ ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^1 ^3 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^ ^5 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^ ^ ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run fill ^ ^15 ^3 ^-1 ^16 ^3 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run fill ^-1 ^12 ^3 ^-1 ^14 ^3 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^14 ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^13 ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^14 ^5 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run tp @s ^ ^ ^ facing ^1 ^ ^
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^ ^ ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^ ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^1 ^3 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^ ^5 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^ ^ ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run fill ^ ^15 ^3 ^-1 ^16 ^3 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run fill ^-1 ^12 ^3 ^-1 ^14 ^3 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^14 ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^13 ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^14 ^5 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run tp @s ^ ^ ^ facing ^1 ^ ^
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^ ^ ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^ ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^1 ^3 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^ ^5 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^ ^ ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run fill ^ ^15 ^3 ^-1 ^16 ^3 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run fill ^-1 ^12 ^3 ^-1 ^14 ^3 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^14 ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^13 ^4 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run setblock ^-1 ^14 ^5 dark_oak_wood
execute as @e[type=zombie,tag=tree2,scores={counter=3}] at @s run tp @s ^ ^ ^ facing ^1 ^ ^
execute as @e[type=zombie,tag=tree2,scores={counter=4}] at @s run fill ^4 ^12 ^5 ^-4 ^15 ^-5 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=4}] at @s run fill ^5 ^12 ^4 ^-5 ^15 ^-4 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=4}] at @s run fill ^1 ^12 ^6 ^-3 ^15 ^6 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=4}] at @s run tp @s ^ ^ ^ facing ^1 ^ ^
execute as @e[type=zombie,tag=tree2,scores={counter=4}] at @s run fill ^1 ^12 ^6 ^-3 ^15 ^6 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=4}] at @s run tp @s ^ ^ ^ facing ^1 ^ ^
execute as @e[type=zombie,tag=tree2,scores={counter=4}] at @s run fill ^1 ^12 ^6 ^-3 ^15 ^6 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=4}] at @s run tp @s ^ ^ ^ facing ^1 ^ ^
execute as @e[type=zombie,tag=tree2,scores={counter=4}] at @s run fill ^1 ^12 ^6 ^-3 ^15 ^6 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=4}] at @s run tp @s ^ ^ ^ facing ^1 ^ ^
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^1 ^13 ^7 ^-3 ^14 ^7 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^2 ^13 ^6 ^4 ^14 ^6 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^-4 ^13 ^6 ^-4 ^14 ^6 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^5 ^13 ^5 ^5 ^14 ^5 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run tp @s ^ ^ ^ facing ^1 ^ ^
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^1 ^13 ^7 ^-3 ^14 ^7 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^2 ^13 ^6 ^4 ^14 ^6 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^-4 ^13 ^6 ^-4 ^14 ^6 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^5 ^13 ^5 ^5 ^14 ^5 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run tp @s ^ ^ ^ facing ^1 ^ ^
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^1 ^13 ^7 ^-3 ^14 ^7 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^2 ^13 ^6 ^4 ^14 ^6 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^-4 ^13 ^6 ^-4 ^14 ^6 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^5 ^13 ^5 ^5 ^14 ^5 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run tp @s ^ ^ ^ facing ^1 ^ ^
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^1 ^13 ^7 ^-3 ^14 ^7 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^2 ^13 ^6 ^4 ^14 ^6 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^-4 ^13 ^6 ^-4 ^14 ^6 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run fill ^5 ^13 ^5 ^5 ^14 ^5 dark_oak_leaves keep
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run tp @s ^ ^ ^ facing ^1 ^ ^
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run tp @s ~ ~-100 ~
execute as @e[type=zombie,tag=tree2,scores={counter=5}] at @s run kill @s
execute if entity @e[type=zombie,tag=tree2] run schedule function spells:tree2_animation 1s