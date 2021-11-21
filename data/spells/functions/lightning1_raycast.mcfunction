scoreboard players add @s counter 1
execute if entity @s[scores={cast=1..}] run particle enchanted_hit ^ ^ ^ 0 0 0 0.1 10 force
execute unless block ^ ^ ^ #spell_main:empty run scoreboard players set @s counter 50
execute if entity @e[tag=!lightning1,distance=..2] run scoreboard players set @s counter 50
execute unless score @s counter matches 50.. if block ^ ^ ^ #spell_main:empty positioned ^ ^ ^-1 run function spells:lightning1_raycast
execute if entity @s[scores={cast=1..}] if score @s counter matches 50.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning1","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 50.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning1","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 50.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning1","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 50.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning1","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 50.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning1","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 50.. run spreadplayers ~ ~ 1 3 false @e[type=area_effect_cloud,tag=lightning1,sort=nearest,limit=5]
execute if entity @s[scores={cast=1..}] if score @s counter matches 50.. at @e[type=area_effect_cloud,tag=lightning1,sort=nearest,limit=5] run summon lightning_bolt ~ ~ ~ {Tags:["from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 50.. as @e[distance=..5,tag=!lightning1,type=!#spell_main:soulless] at @s run function spells:damage
execute unless entity @s[scores={cast=1..}] if score @s counter matches 50.. run particle dust 0 0.5 0.5 2 ~ ~-10 ~ 0 8 0 0.01 20 force
execute unless entity @s[scores={cast=1..}] if score @s counter matches 50.. run particle enchanted_hit ~ ~0.2 ~ 0 0 0 0.5 10 force
execute if score @s counter matches 50.. run scoreboard players reset @s counter