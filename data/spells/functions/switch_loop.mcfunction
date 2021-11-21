execute as @e[type=villager,tag=switch] if score @s id = @p id run tp @s ^ ^ ^2.5 facing entity @s feet

particle reverse_portal ^-0.5 ^0.8 ^ 0 0 0 0.03 5

execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=switch] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=switch] if score @s id = @p id run kill @s
execute unless entity @e[distance=..5,tag=cast,type=villager] run title @s actionbar [{"text":"Spell Cancelled","color":"red"}]
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove switch
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove casting

execute as @s[scores={cast=1..}] positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:switch_raycast
execute as @s[scores={cast=1..}] run playsound entity.player.attack.weak master @a ~ ~ ~ 3 1.7
execute as @s[scores={cast=1..}] as @e[type=villager,tag=switch] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[scores={cast=1..}] as @e[type=villager,tag=switch] if score @s id = @p id run kill @s
execute as @s[scores={cast=1..}] run tag @s remove switch
execute as @s[scores={cast=1..}] run tag @s remove casting