execute as @e[type=villager,tag=steal] if score @s id = @p id run tp @s ^ ^ ^2.5 facing entity @s feet

particle enchant ^-0.5 ^1.8 ^ 0 0 0 0.5 2

execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=steal] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=steal] if score @s id = @p id run kill @s
execute unless entity @e[distance=..5,tag=cast,type=villager] run title @s actionbar [{"text":"Spell Cancelled","color":"red"}]
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove steal
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove casting

execute as @s[scores={cast=1..}] positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:steal_raycast
execute as @s[scores={cast=1..}] run playsound entity.player.attack.knockback master @a ~ ~ ~ 3 0.1
execute if score @s level < spells.steal sublevel as @e[type=villager,tag=steal] if score @s id = @p id run tp @s ~ ~-100 ~
execute if score @s level < spells.steal sublevel as @e[type=villager,tag=steal] if score @s id = @p id run kill @s