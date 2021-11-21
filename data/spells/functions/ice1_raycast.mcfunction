scoreboard players add @s counter 1
execute unless block ^ ^ ^ #spell_main:empty unless block ^ ^ ^ packed_ice run scoreboard players set @s counter 41
execute if entity @e[type=!#spell_main:soulless,tag=!from_spell,tag=!ice1,distance=..2] run scoreboard players set @s counter 42
execute unless score @s counter matches 41.. if block ^ ^ ^ #spell_main:empty positioned ^ ^ ^-1 run function spells:ice1_raycast

execute if entity @s[scores={cast=1..}] if score @s counter matches 42.. as @e[distance=..2,tag=!ice1,type=!#spell_main:soulless,tag=!from_spell] at @s run fill ~-2 ~-1 ~-2 ~2 ~3 ~2 packed_ice hollow
execute if entity @s[scores={cast=1..}] if score @s counter matches 42.. as @e[distance=..2,tag=!ice1,type=!#spell_main:soulless,tag=!from_spell] at @s run effect give @s wither 30 0 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 42.. as @e[distance=..2,tag=!ice1,type=!#spell_main:soulless,tag=!from_spell] at @s run effect give @s slowness 30 2 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 42.. as @e[distance=..2,tag=!ice1,type=!#spell_main:soulless,tag=!from_spell] at @s run effect give @s mining_fatigue 30 1 true
execute if entity @s[scores={cast=1..}] if score @s counter matches 41 at @s run fill ~-2 ~-1 ~-2 ~2 ~3 ~2 packed_ice hollow
execute unless entity @s[scores={cast=1..}] if score @s counter matches 42.. at @e[distance=..2,type=!#spell_main:soulless,tag=!from_spell] run particle item_snowball ~ ~2.3 ~ 0 0 0 1 1 force
execute unless entity @s[scores={cast=1..}] if score @s counter matches 41 at @s run particle item_snowball ~ ~2.3 ~ 0 0 0 1 1 force
execute if score @s counter matches 41.. run scoreboard players reset @s counter