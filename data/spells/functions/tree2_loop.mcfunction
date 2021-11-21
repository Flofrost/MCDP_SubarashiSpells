execute as @e[type=villager,tag=tree2] if score @s id = @p id run tp @s ^ ^ ^2.5
execute as @e[type=zombie,tag=tree2,distance=..5] if score @s id = @p id positioned ~ ~0.7 ~ run tp @s ^ ^ ^3.3 facing entity @p feet

execute unless entity @e[type=zombie,tag=tree2,distance=..5,scores={id=0..}] run summon zombie ~ ~1 ~ {Tags:["from_spell","tree2","passive"],ArmorItems:[{},{},{},{id:"dark_oak_leaves",Count:1}],Invulnerable:1,Silent:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b}],IsBaby:1,Attributes:[{Base:0.0d,Name:"minecraft:generic.movement_speed"}],NoAI:1,DeathLootTable:"lol_none"}
execute unless entity @e[type=zombie,tag=tree2,distance=..5,scores={id=0..}] run scoreboard players operation @e[type=zombie,tag=tree2,sort=nearest,limit=1] id = @s id

execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=tree2] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=tree2] if score @s id = @p id run kill @s
execute unless entity @e[distance=..5,tag=cast,type=villager] run title @s actionbar [{"text":"Spell Cancelled","color":"red"}]
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove tree2
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove casting
execute unless entity @e[distance=..5,tag=cast,type=villager] as @e[type=zombie,tag=tree2,distance=..5] if score @s id = @p id run kill @s

execute as @s[scores={cast=1..}] store result score @s sublevel run scoreboard players get spells.tree2 sublevel
execute as @s[scores={cast=1..}] run playsound entity.player.attack.weak master @a ~ ~ ~ 1 0.7
execute as @s[scores={cast=1..}] store result score @s X run data get entity @s Pos[0] 100
execute as @s[scores={cast=1..}] store result score @s Y run data get entity @s Pos[1] 100
execute as @s[scores={cast=1..}] store result score @s Z run data get entity @s Pos[2] 100
execute as @s[scores={cast=1..}] as @e[type=zombie,tag=tree2,distance=..5] if score @s id = @p id store result score @s X run data get entity @s Pos[0] 100
execute as @s[scores={cast=1..}] as @e[type=zombie,tag=tree2,distance=..5] if score @s id = @p id store result score @s Y run data get entity @s Pos[1] 100
execute as @s[scores={cast=1..}] as @e[type=zombie,tag=tree2,distance=..5] if score @s id = @p id store result score @s Z run data get entity @s Pos[2] 100
execute as @s[scores={cast=1..}] as @e[type=zombie,tag=tree2,distance=..5] if score @s id = @p id store result entity @s Motion[0] double 0.029 run scoreboard players operation @s X -= @p X
execute as @s[scores={cast=1..}] as @e[type=zombie,tag=tree2,distance=..5] if score @s id = @p id store result entity @s Motion[1] double 0.00585 run scoreboard players operation @s Y -= @p Y
execute as @s[scores={cast=1..}] as @e[type=zombie,tag=tree2,distance=..5] if score @s id = @p id store result entity @s Motion[2] double 0.029 run scoreboard players operation @s Z -= @p Z
execute as @s[scores={cast=1..}] as @e[type=zombie,tag=tree2,distance=..5] if score @s id = @p id run data remove entity @s NoAI
execute if score @s level < spells.tree2 sublevel as @e[type=villager,tag=tree2] if score @s id = @p id run tp @s ~ ~-100 ~
execute if score @s level < spells.tree2 sublevel as @e[type=villager,tag=tree2] if score @s id = @p id run kill @s
