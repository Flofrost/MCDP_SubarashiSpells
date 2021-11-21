execute as @e[type=villager,tag=succ] if score @s id = @p id run tp @s ^ ^ ^2.5 facing entity @s feet

execute as @s[scores={cast=1..}] if score @s level matches 1.. run xp add @s -10
execute as @s[scores={cast=1..}] if score @s level matches 1.. positioned ~ ~1.61 ~ run summon experience_orb ^ ^ ^6 {Value:2}
execute as @s[scores={cast=1..}] if score @s level matches 1.. positioned ~ ~1.61 ~ run particle totem_of_undying ^ ^ ^6 0 0 0 0.1 2
execute as @s[scores={cast=1..}] if score @s level matches 1.. run particle totem_of_undying ~ ~1 ~ 0 0 0 0.4 5
execute as @s[scores={cast=1..}] if score @s level matches 1.. run playsound block.beehive.exit master @a ~ ~ ~ 1 2

execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=succ] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=succ] if score @s id = @p id run kill @s
execute unless entity @e[distance=..5,tag=cast,type=villager] run playsound entity.ender_dragon.hurt master @a ~ ~ ~ 1 0.7
execute unless entity @e[distance=..5,tag=cast,type=villager] run title @s actionbar [{"text":"Spell Cancelled","color":"red"}]
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove succ
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove casting