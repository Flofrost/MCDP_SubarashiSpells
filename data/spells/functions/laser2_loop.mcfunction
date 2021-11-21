execute as @e[type=villager,tag=laser2] if score @s id = @p id run tp @s ^ ^ ^2.5 facing entity @s feet

particle end_rod ^-0.5 ^0.8 ^ 0 0 0 0.01 5
particle firework ^-0.5 ^0.8 ^ 0 0 0 0.1 3
particle lava ^-0.5 ^0.8 ^ 0 0 0 0.1 1

execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=laser2] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=laser2] if score @s id = @p id run kill @s
execute unless entity @e[distance=..5,tag=cast,type=villager] run title @s actionbar [{"text":"Spell Cancelled","color":"red"}]
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove laser2
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove casting

execute as @s[scores={cast=1..}] positioned ~ ~1.61 ~ positioned ^ ^ ^5 facing entity @s eyes run function spells:laser2_raycast
execute as @s[scores={cast=1..}] run playsound entity.player.attack.sweep master @a ~ ~ ~ 3 2
execute as @s[scores={cast=1..}] store result score @s sublevel run scoreboard players get spells.laser2 sublevel
execute as @s[scores={cast=1..}] as @e[type=villager,tag=laser2] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[scores={cast=1..}] as @e[type=villager,tag=laser2] if score @s id = @p id run kill @s
execute as @s[scores={cast=1..}] run tag @s remove laser2
execute as @s[scores={cast=1..}] run tag @s remove casting