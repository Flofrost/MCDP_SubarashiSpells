scoreboard players add @s counter 1
execute unless block ^ ^ ^ #spell_main:empty run scoreboard players set @s counter 5
execute if entity @e[type=!#spell_main:soulless,tag=!from_spell,tag=!bless,distance=..1.3] run scoreboard players set @s counter 6
execute unless score @s counter matches 5.. if block ^ ^ ^ #spell_main:empty positioned ^ ^ ^-1 run function spells:bless_raycast

execute if entity @s[scores={cast=1..}] if score @s counter matches 6.. as @e[distance=..1.3,tag=!bless,type=!#spell_main:soulless,tag=!from_spell] run effect give @s luck 180 30 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 6.. as @e[distance=..1.3,tag=!bless,type=!#spell_main:soulless,tag=!from_spell] run effect give @s strength 180 2 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 6.. as @e[distance=..1.3,tag=!bless,type=!#spell_main:soulless,tag=!from_spell] run effect give @s resistance 180 2 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 6.. as @e[distance=..1.3,tag=!bless,type=!#spell_main:soulless,tag=!from_spell] run effect give @s regeneration 180 3 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 6.. as @e[distance=..1.3,tag=!bless,type=!#spell_main:soulless,tag=!from_spell] run effect give @s absorption 180 1 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 6.. as @e[distance=..1.3,tag=!bless,type=!#spell_main:soulless,tag=!from_spell] run effect give @s saturation 180 127 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 6.. as @e[distance=..1.3,tag=!bless,type=!#spell_main:soulless,tag=!from_spell] run effect give @s fire_resistance 180 0 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 6.. as @e[distance=..1.3,tag=!bless,type=!#spell_main:soulless,tag=!from_spell] run tag @s add passive
execute if entity @s[scores={cast=1..}] if score @s counter matches 6.. as @e[distance=..1.3,tag=!bless,type=!#spell_main:soulless,tag=!from_spell] run tag @s add blessed
execute if entity @s[scores={cast=1..}] if score @s counter matches 5 run effect give @s luck 180 30 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 5 run effect give @s strength 180 2 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 5 run effect give @s resistance 180 2 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 5 run effect give @s regeneration 180 3 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 5 run effect give @s absorption 180 1 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 5 run tag @s add passive
execute if entity @s[scores={cast=1..}] if score @s counter matches 5 run tag @s add blessed
execute unless entity @s[scores={cast=1..}] if score @s counter matches 6.. at @e[distance=..1.3,type=!#spell_main:soulless,tag=!from_spell] run particle entity_effect ~ ~2.3 ~ 0 1 1 1 0 force
execute unless entity @s[scores={cast=1..}] if score @s counter matches 5 at @s run particle entity_effect ~ ~2.3 ~ 0 1 1 1 0 force
execute if score @s counter matches 5.. run scoreboard players reset @s counter