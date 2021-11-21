tag @s remove casting

execute store result score @s sublevel run scoreboard players get spells.ice0 sublevel

execute as @e[distance=0.1..27,type=!#spell_main:soulless,tag=!from_spell] at @s run data merge entity @s {NoAI:1}
execute as @e[distance=0.1..27,type=!#spell_main:soulless,tag=!from_spell] at @s run effect give @s slowness 20 255 true
execute as @e[distance=0.1..27,type=!#spell_main:soulless,tag=!from_spell] at @s run effect give @s jump_boost 20 128 true
execute as @e[distance=0.1..27,type=!#spell_main:soulless,tag=!from_spell] at @s run effect give @s wither 20 2 true
execute as @e[distance=0.1..27,type=!#spell_main:soulless,tag=!from_spell] at @s run effect give @s blindness 20 1 true
execute as @e[distance=0.1..27,type=!#spell_main:soulless,tag=!from_spell] at @s run summon falling_block ~ ~ ~ {NoGravity:1,Time:400,BlockState:{Name:"ice"},Tags:["passive","ice0"],DropItem:0}
execute as @e[distance=0.1..27,type=!#spell_main:soulless,tag=!from_spell] at @s run summon falling_block ~ ~1 ~ {NoGravity:1,Time:400,BlockState:{Name:"ice"},Tags:["passive","ice0"],DropItem:0}

particle poof ~ ~1.61 ~ 0 0 0 1 100
playsound entity.puffer_fish.death master @a ~ ~ ~ 1 2
playsound entity.puffer_fish.death master @a ~ ~ ~ 1 1.5
playsound entity.zombie_villager.cure master @a ~ ~ ~ 0.33 0.5
playsound entity.zombie_villager.cure master @a ~ ~ ~ 0.33 0.3
playsound entity.zombie_villager.cure master @a ~ ~ ~ 0.33 0.1