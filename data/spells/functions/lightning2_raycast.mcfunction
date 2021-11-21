scoreboard players add @s counter 1
execute if entity @s[scores={cast=1..}] run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2"]}
execute if entity @s[scores={cast=1..}] run spreadplayers ~ ~ 1 1 false @e[type=area_effect_cloud,tag=lightning2,sort=nearest,limit=1]
execute if entity @s[scores={cast=1..}] at @e[type=area_effect_cloud,tag=lightning2,sort=nearest,limit=1] run summon lightning_bolt
execute unless block ^ ^ ^ #spell_main:empty run scoreboard players set @s counter 65
execute if entity @e[type=!lightning_bolt,tag=!lightning2,distance=..2] run scoreboard players set @s counter 65
execute unless score @s counter matches 65.. if block ^ ^ ^ #spell_main:empty positioned ^ ^ ^-1 run function spells:lightning2_raycast
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run summon area_effect_cloud ^ ^ ^ {Tags:["lightning2","from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. run spreadplayers ~ ~ 3 10 false @e[type=area_effect_cloud,tag=lightning2,sort=nearest,limit=15]
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. at @e[type=area_effect_cloud,tag=lightning2,sort=nearest,limit=15] run summon lightning_bolt ~ ~ ~ {Tags:["from_spell"]}
execute if entity @s[scores={cast=1..}] if score @s counter matches 65.. as @e[distance=..7,tag=!lightning2,type=!#spell_main:soulless,type=!player,tag=!from_spell] at @s run function spells:damage_plus
execute unless entity @s[scores={cast=1..}] if score @s counter matches 65.. run particle crit ~ ~0.5 ~ 0 0 0 1 15 force
execute unless entity @s[scores={cast=1..}] if score @s counter matches 65.. run particle dust 0 0.5 0.5 3 ~ ~-15 ~ 0 11 0 0.1 30 force
execute unless entity @s[scores={cast=1..}] if score @s counter matches 65.. run particle crit ~ ~-15 ~ 0 11 0 0.1 30 force
execute if score @s counter matches 65.. run scoreboard players reset @s counter