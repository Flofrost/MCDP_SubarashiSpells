scoreboard players add @s counter 1
execute unless block ^ ^ ^ #spell_main:empty run scoreboard players set @s counter 35
execute if entity @e[tag=!lightning0,tag=!from_spell,type=!#spell_main:soulless,distance=..2] run scoreboard players set @s counter 35
execute unless score @s counter matches 35.. if block ^ ^ ^ #spell_main:empty positioned ^ ^ ^-1 run function spells:lightning0_raycast
execute if entity @s[scores={cast=1..}] if score @s counter matches 35.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning0","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 35.. run spreadplayers ~ ~ 0 1 false @e[type=area_effect_cloud,tag=lightning0,sort=nearest,limit=1]
execute if entity @s[scores={cast=1..}] if score @s counter matches 35.. at @e[type=area_effect_cloud,tag=lightning0,sort=nearest,limit=1] run summon lightning_bolt
execute unless entity @s[scores={cast=1..}] if score @s counter matches 35.. run particle enchanted_hit ~ ~0.2 ~ 0 0 0 0.3 3 force
scoreboard players reset @s[scores={counter=35..}] counter