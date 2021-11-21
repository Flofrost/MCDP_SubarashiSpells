execute as @e[type=villager,tag=lightning2] if score @s id = @p id run tp @s ^ ^ ^2.5 facing entity @s feet

particle enchanted_hit ^-0.5 ^0.8 ^ 0 0 0 0.5 6
particle crit ^-0.5 ^0.8 ^ 0 0 0 0.3 3
execute positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:lightning2_raycast

execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=lightning2] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=lightning2] if score @s id = @p id run kill @s
execute unless entity @e[distance=..5,tag=cast,type=villager] run title @s actionbar [{"text":"Spell Cancelled","color":"red"}]
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove lightning2
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove casting

execute as @s[scores={cast=1..}] positioned ~ ~1.61 ~ positioned ^ ^ ^5 facing entity @s eyes run function spells:lightning2_raycast
execute as @s[scores={cast=1..}] store result score @s sublevel run scoreboard players get spells.lightning2 sublevel
execute if score @s level < spells.lightning2 sublevel as @e[type=villager,tag=lightning2] if score @s id = @p id run tp @s ~ ~-100 ~
execute if score @s level < spells.lightning2 sublevel as @e[type=villager,tag=lightning2] if score @s id = @p id run kill @s