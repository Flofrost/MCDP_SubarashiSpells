scoreboard players add @s counter 1
execute unless block ^ ^ ^ #spell_main:empty run scoreboard players set @s counter 31
execute if entity @e[type=!#spell_main:soulless,tag=!from_spell,tag=!heal0,distance=..1.3] run scoreboard players set @s counter 32
execute unless score @s counter matches 31.. if block ^ ^ ^ #spell_main:empty positioned ^ ^ ^-1 run function spells:heal0_raycast

execute if entity @s[scores={cast=1..}] if score @s counter matches 32.. as @e[distance=..1.3,tag=!heal0,type=!#spell_main:soulless,tag=!from_spell] run effect give @s instant_health 1 110 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 32.. as @e[distance=..1.3,tag=!heal0,type=!#spell_main:soulless,tag=!from_spell] run effect give @s saturation 1 110 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 31 run effect give @s instant_health 1 110 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 31 run effect give @s saturation 1 110 true
execute unless entity @s[scores={cast=1..}] if score @s counter matches 32.. at @e[distance=..1.3,type=!#spell_main:soulless,tag=!from_spell] run particle heart ~ ~2.3 ~ 0 0 0 1 1 force
execute unless entity @s[scores={cast=1..}] if score @s counter matches 31 at @s run particle heart ~ ~2.3 ~ 0 0 0 1 1 force
execute if score @s counter matches 31.. run scoreboard players reset @s counter