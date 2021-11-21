execute as @s[type=zombie,tag=fire1] run tp @s ^ ^ ^ facing ^ ^ ^-1
execute as @s[type=zombie,tag=fire1] run playsound entity.zombie.infect master @a ~ ~ ~ 3 0.1
execute as @s[type=zombie,tag=fire1] run particle lava ~ ~ ~ 0 0 0 0.1 10 force
execute as @s[type=zombie,tag=fire1] run particle flame ~ ~10 ~ 0 8 0 0.1 50 force
execute as @s[type=zombie,tag=fire1] run particle dust 0.3 0 0 5 ~ ~10 ~ 0 8 0 0.1 100 force
execute as @s[type=zombie,tag=fire1] run summon armor_stand ~ ~20 ~ {Tags:["fire1","from_spell"],NoGravity:1,Invisible:1,Marker:1}
execute as @s[type=zombie,tag=fire1] run data modify entity @e[type=armor_stand,tag=fire1,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @s[type=zombie,tag=fire1] run kill @s

execute as @e[type=armor_stand,tag=fire1] at @s run scoreboard players add @s counter 1
execute as @e[type=armor_stand,tag=fire1] at @s run tp ^ ^ ^0.1
execute as @e[type=armor_stand,tag=fire1] at @s run particle lava ^ ^ ^ 7 0 7 0.1 5 force
execute as @e[type=armor_stand,tag=fire1] at @s run particle falling_lava ^ ^ ^ 7 0 7 0.1 10 force
execute as @e[type=armor_stand,tag=fire1] at @s run particle dust 0.3 0 0 3 ^ ^ ^ 7 0 7 0.1 20 force
execute as @e[type=armor_stand,tag=fire1] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["fire1","from_spell"]}
execute as @e[type=armor_stand,tag=fire1] at @s run spreadplayers ~ ~ 1 10 false @e[type=area_effect_cloud,sort=nearest,tag=fire1,limit=1]
execute at @e[type=area_effect_cloud,tag=fire1] run summon falling_block ~ ~20 ~ {Tags:["fire1","from_spell"],BlockState:{Name:"fire"},Time:1,HurtEntities:1,FallHurtAmount:4}
execute as @e[type=armor_stand,tag=fire1] at @e[type=falling_block,tag=fire1] run particle flame ^ ^ ^ 0 0 0 0.1 3
execute as @e[type=armor_stand,tag=fire1] at @s run kill @s[scores={counter=300..}]
execute if entity @e[type=armor_stand,tag=fire1] run schedule function spells:fire1_cloud 1t