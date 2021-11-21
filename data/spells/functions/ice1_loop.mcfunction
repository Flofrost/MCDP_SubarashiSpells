execute as @e[type=villager,tag=ice1] if score @s id = @p id run tp @s ^ ^ ^2.5 facing entity @s feet

particle firework ^-0.5 ^0.8 ^ 0.1 0.1 0.1 0.05 1
particle item_snowball ^-0.5 ^0.8 ^ 0.1 0.1 0.1 0.5 6
execute positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:ice1_raycast

execute as @s[scores={cast=1..}] positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:ice1_raycast
execute as @s[scores={cast=1..}] run playsound entity.zombie_villager.cure master @a ~ ~ ~ 1 0.4
execute as @s[scores={cast=1..}] store result score @s sublevel run scoreboard players get spells.ice1 sublevel
execute if score @s level < spells.ice1 sublevel as @e[type=villager,tag=ice1] if score @s id = @p id run tp @s ~ ~-100 ~
execute if score @s level < spells.ice1 sublevel as @e[type=villager,tag=ice1] if score @s id = @p id run kill @s

execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=ice1] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=ice1] if score @s id = @p id run kill @s
execute unless entity @e[distance=..5,tag=cast,type=villager] run title @s actionbar [{"text":"Spell Cancelled","color":"red"}]
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove ice1
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove casting