execute as @e[type=villager,tag=heal0] if score @s id = @p id run tp @s ^ ^ ^2.5 facing entity @s feet

particle dust 1 0 0.2 1 ^-0.5 ^0.8 ^ 0.1 0.1 0.1 0.5 6
execute positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:heal0_raycast

execute as @s[scores={cast=1..}] positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:heal0_raycast
execute as @s[scores={cast=1..}] run playsound entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
execute as @s[scores={cast=1..}] store result score @s sublevel run scoreboard players get spells.heal0 sublevel
execute if score @s level < spells.heal0 sublevel as @e[type=villager,tag=heal0] if score @s id = @p id run tp @s ~ ~-100 ~
execute if score @s level < spells.heal0 sublevel as @e[type=villager,tag=heal0] if score @s id = @p id run kill @s

execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=heal0] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=heal0] if score @s id = @p id run kill @s
execute unless entity @e[distance=..5,tag=cast,type=villager] run title @s actionbar [{"text":"Spell Cancelled","color":"red"}]
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove heal0
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove casting