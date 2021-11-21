execute as @e[type=villager,tag=laser1] if score @s id = @p id run tp @s ^ ^ ^2.5 facing entity @s feet

particle end_rod ^-0.5 ^0.8 ^ 0 0 0 0.01 2
particle firework ^-0.5 ^0.8 ^ 0 0 0 0.1 1

execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=laser1] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=laser1] if score @s id = @p id run kill @s
execute unless entity @e[distance=..5,tag=cast,type=villager] run title @s actionbar [{"text":"Spell Cancelled","color":"red"}]
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove laser1
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove casting

execute as @s[scores={cast=1..}] positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:laser1_raycast
execute as @s[scores={cast=1..}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 3 1
execute as @s[scores={cast=1..}] run playsound entity.player.attack.nodamage master @a ~ ~ ~ 3 2
execute as @s[scores={cast=1..}] store result score @s sublevel run scoreboard players get spells.laser1 sublevel
execute if score @s level < spells.laser1 sublevel as @e[type=villager,tag=laser1] if score @s id = @p id run tp @s ~ ~-100 ~
execute if score @s level < spells.laser1 sublevel as @e[type=villager,tag=laser1] if score @s id = @p id run kill @s
