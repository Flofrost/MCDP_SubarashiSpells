execute as @s[type=zombie,tag=fire2] run tp @s ^ ^ ^ facing ^ ^ ^-1
execute as @s[type=zombie,tag=fire2] run playsound entity.zombie.infect master @a ~ ~ ~ 3 0.1
execute as @s[type=zombie,tag=fire2] run particle lava ~ ~ ~ 0 0 0 0.1 20 force
execute as @s[type=zombie,tag=fire2] run particle flame ~ ~10 ~ 0 8 0 0.1 100 force
execute as @s[type=zombie,tag=fire2] run particle dust 0.5 0.1 0 5 ~ ~15 ~ 0 11 0 0.1 150 force
execute as @s[type=zombie,tag=fire2] run summon armor_stand ~ ~30 ~ {Tags:["fire2","from_spell"],NoGravity:1,Invisible:1,Marker:1}
execute as @s[type=zombie,tag=fire2] run data modify entity @e[type=armor_stand,tag=fire2,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @s[type=zombie,tag=fire2] run kill @s

execute as @e[type=armor_stand,tag=fire2] at @s run scoreboard players add @s counter 1
execute as @e[type=armor_stand,tag=fire2] at @s run tp ^ ^ ^0.12
execute as @e[type=armor_stand,tag=fire2] at @s run particle lava ^ ^ ^ 10 0 10 0.1 10 force
execute as @e[type=armor_stand,tag=fire2] at @s run particle falling_lava ^ ^ ^ 10 0 10 0.1 20 force
execute as @e[type=armor_stand,tag=fire2] at @s run particle dust 0.3 0 0 3 ^ ^ ^ 10 0 10 0.1 40 force
execute as @e[type=armor_stand,tag=fire2] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["fire2","from_spell"]}
execute as @e[type=armor_stand,tag=fire2] at @s run spreadplayers ~ ~ 1 15 false @e[type=area_effect_cloud,sort=nearest,tag=fire2,limit=1]
execute at @e[type=area_effect_cloud,tag=fire2] run summon fireball ~ ~30 ~ {Tags:["fire2","from_spell"],ExplosionPower:2,power:[0.0,-0.1,0.0]}
execute as @e[type=armor_stand,tag=fire2] at @e[type=fireball,tag=fire2] run particle flame ^ ^ ^ 0 0 0 0.1 3
execute as @e[type=armor_stand,tag=fire2] at @s run kill @s[scores={counter=400..}]
execute if entity @e[type=armor_stand,tag=fire2] run schedule function spells:fire2_cloud 1t