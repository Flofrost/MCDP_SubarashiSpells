tag @s add tree0

summon zombie ~ ~1 ~ {Tags:["from_spell","tree0","passive"],ArmorItems:[{},{},{},{id:"oak_leaves",Count:1}],Invulnerable:1,Silent:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b}],IsBaby:1,Attributes:[{Base:0.0d,Name:"minecraft:generic.movement_speed"}],NoAI:1,DeathLootTable:"lol_none"}
scoreboard players operation @e[type=zombie,tag=tree0,sort=nearest,limit=1] id = @s id

playsound minecraft:block.composter.fill_success master @a ~ ~ ~ 1 1

execute as @e[type=zombie,tag=tree0,distance=..5] if score @s id = @p id positioned ~ ~0.7 ~ run tp @s ^ ^ ^3.3 facing entity @p feet

execute store result score @s sublevel run scoreboard players get spells.tree0 sublevel
playsound entity.player.attack.weak master @a ~ ~ ~ 1 0.7
execute store result score @s X run data get entity @s Pos[0] 100
execute store result score @s Y run data get entity @s Pos[1] 100
execute store result score @s Z run data get entity @s Pos[2] 100
execute as @e[type=zombie,tag=tree0,distance=..5] if score @s id = @p id store result score @s X run data get entity @s Pos[0] 100
execute as @e[type=zombie,tag=tree0,distance=..5] if score @s id = @p id store result score @s Y run data get entity @s Pos[1] 100
execute as @e[type=zombie,tag=tree0,distance=..5] if score @s id = @p id store result score @s Z run data get entity @s Pos[2] 100
execute as @e[type=zombie,tag=tree0,distance=..5] if score @s id = @p id store result entity @s Motion[0] double 0.012 run scoreboard players operation @s X -= @p X
execute as @e[type=zombie,tag=tree0,distance=..5] if score @s id = @p id store result entity @s Motion[1] double 0.005 run scoreboard players operation @s Y -= @p Y
execute as @e[type=zombie,tag=tree0,distance=..5] if score @s id = @p id store result entity @s Motion[2] double 0.012 run scoreboard players operation @s Z -= @p Z
execute as @e[type=zombie,tag=tree0,distance=..5] if score @s id = @p id run data remove entity @s NoAI

tag @s remove tree0