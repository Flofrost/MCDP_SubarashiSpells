execute as @e[type=villager,tag=fire0] if score @s id = @p id run tp @s ^ ^ ^2.5

particle flame ~ ~1 ~ 0.2 0.5 0.2 0.001 2

execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=fire0] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=fire0] if score @s id = @p id run kill @s
execute unless entity @e[distance=..5,tag=cast,type=villager] run title @s actionbar [{"text":"Spell Cancelled","color":"red"}]
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove fire0
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove casting

execute as @s[scores={cast=1..}] store result score @s sublevel run scoreboard players get spells.fire0 sublevel
execute as @s[scores={cast=1..}] run summon fireball ^ ^ ^3 {Tags:["fire0","from_spell"],ExplosionPower:4}
execute as @s[scores={cast=1..}] run scoreboard players operation @e[type=fireball,tag=fire0,sort=nearest,limit=1] id = @s id
execute as @s[scores={cast=1..}] run playsound item.firecharge.use master @a ~ ~ ~ 1 0.7
execute as @s[scores={cast=1..}] store result score @s X run data get entity @s Pos[0] 100
execute as @s[scores={cast=1..}] store result score @s Y run data get entity @s Pos[1] 100
execute as @s[scores={cast=1..}] store result score @s Z run data get entity @s Pos[2] 100
execute as @s[scores={cast=1..}] as @e[type=fireball,tag=fire0] if score @s id = @p id store result score @s X run data get entity @s Pos[0] 100
execute as @s[scores={cast=1..}] as @e[type=fireball,tag=fire0] if score @s id = @p id store result score @s Y run data get entity @s Pos[1] 100
execute as @s[scores={cast=1..}] as @e[type=fireball,tag=fire0] if score @s id = @p id store result score @s Z run data get entity @s Pos[2] 100
execute as @s[scores={cast=1..}] as @e[type=fireball,tag=fire0] if score @s id = @p id store result entity @s power[0] double 0.001 run scoreboard players operation @s X -= @p X
execute as @s[scores={cast=1..}] as @e[type=fireball,tag=fire0] if score @s id = @p id store result entity @s power[1] double 0.001 run scoreboard players operation @s Y -= @p Y
execute as @s[scores={cast=1..}] as @e[type=fireball,tag=fire0] if score @s id = @p id store result entity @s power[2] double 0.001 run scoreboard players operation @s Z -= @p Z
execute if score @s level < spells.fire0 sublevel as @e[type=villager,tag=fire0] if score @s id = @p id run tp @s ~ ~-100 ~
execute if score @s level < spells.fire0 sublevel as @e[type=villager,tag=fire0] if score @s id = @p id run kill @s
