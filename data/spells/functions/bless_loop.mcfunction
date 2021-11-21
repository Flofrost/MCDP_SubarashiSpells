execute as @e[type=villager,tag=bless] if score @s id = @p id run tp @s ^ ^ ^2.5 facing entity @s feet

particle entity_effect ^-0.5 ^0.8 ^ 0.1 0.1 0.1 0.5 6
execute positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:bless_raycast


execute as @s[scores={cast=1..}] positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:bless_raycast
execute as @s[scores={cast=1..}] store result score @s sublevel run scoreboard players get spells.bless sublevel
execute as @s[scores={cast=1..}] run playsound entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
execute as @s[scores={cast=1..}] run playsound entity.evoker.prepare_summon master @a ~ ~ ~ 1 1.2
execute as @s[scores={cast=1..}] run playsound entity.evoker.prepare_summon master @a ~ ~ ~ 1 0.3
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=bless] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=bless] if score @s id = @p id run kill @s

execute if score @s level < spells.bless sublevel as @e[type=villager,tag=bless] if score @s id = @p id run tp @s ~ ~-100 ~
execute if score @s level < spells.bless sublevel as @e[type=villager,tag=bless] if score @s id = @p id run kill @s
execute unless entity @e[distance=..5,tag=cast,type=villager] run title @s actionbar [{"text":"Spell Cancelled","color":"red"}]
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove bless
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove casting