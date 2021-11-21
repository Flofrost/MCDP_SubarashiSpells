execute as @e[type=villager,tag=tenta] if score @s id = @p id run tp @s ^ ^ ^2.5 facing entity @s feet

execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=tenta] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=tenta] if score @s id = @p id run kill @s
execute unless entity @e[distance=..5,tag=cast,type=villager] run title @s actionbar [{"text":"Spell Cancelled","color":"red"}]
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove tenta
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove casting

execute as @s[scores={cast=1..}] run playsound entity.dolphin.death master @a ~ ~ ~ 3 2
execute as @s[scores={cast=1..}] store result score @s sublevel run scoreboard players get spells.tenta sublevel
execute as @s[scores={cast=1..}] as @e[type=villager,tag=tenta] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[scores={cast=1..}] as @e[type=villager,tag=tenta] if score @s id = @p id run kill @s

execute anchored eyes run function spells:tenta_sphere

execute at @e[tag=tentarget] run summon fireball ~ ~25 ~ {power:[0.0,-0.07,0.0],ExplosionPower:6,Tags:["passive","fire0","from_spell"]}
execute at @e[tag=tentarget] run playsound entity.dolphin.death master @a ~ ~25 ~ 2 1.5
tag @e[tag=tentarget] remove tentarget