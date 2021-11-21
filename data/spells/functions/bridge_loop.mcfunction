execute as @e[type=villager,tag=bridge] if score @s id = @p id run tp @s ^ ^ ^2.5 facing entity @s feet

particle block dirt ^-0.5 ^0.8 ^ 0 0 0 0.01 2

execute as @s[scores={cast=1..}] positioned ^ ^ ^1 facing entity @s feet run function spells:bridge_raycast
execute as @s[scores={cast=1..}] run playsound minecraft:block.composter.fill_success master @a ~ ~ ~ 1 1.5
execute as @s[scores={cast=1..}] store result score @s sublevel run scoreboard players get spells.bridge sublevel
execute if score @s level < spells.bridge sublevel as @e[type=villager,tag=bridge] if score @s id = @p id run tp @s ~ ~-100 ~
execute if score @s level < spells.bridge sublevel as @e[type=villager,tag=bridge] if score @s id = @p id run kill @s

execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=bridge] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=bridge] if score @s id = @p id run kill @s
execute unless entity @e[distance=..5,tag=cast,type=villager] run title @s actionbar [{"text":"Spell Cancelled","color":"red"}]
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove bridge
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove casting