execute as @s[type=item,tag=book] run particle end_rod ^ ^ ^ 0 2 0 0.01 5 force @a[distance=4..]
execute as @s[type=item,tag=book] run particle firework ^ ^ ^ 0 0 0 0.1 1 force @a[distance=4..]
execute as @s[type=zombie,tag=fire1] run particle flame ~ ~1 ~ 0 0 0 0.01 2 force
execute as @s[type=zombie,tag=fire1] run particle smoke ~ ~1 ~ 0 0 0 0.05 5 force
execute as @s[type=zombie,tag=fire1,nbt=!{NoAI:1b}] at @s unless block ~ ~-0.1 ~ #spell_main:empty run function spells:fire1_cloud
execute as @s[type=zombie,tag=fire2] run particle lava ~ ~1 ~ 0 0 0 0.01 2 force
execute as @s[type=zombie,tag=fire2] run particle dust 0.5 0 0 3 ~ ~1 ~ 0 0 0 0.05 5 force
execute as @s[type=zombie,tag=fire2,nbt=!{NoAI:1b}] at @s unless block ~ ~-0.1 ~ #spell_main:empty run function spells:fire2_cloud
execute as @s[type=zombie,tag=water2] run particle block lava ~ ~1 ~ 0 0 0 0.01 5 force
execute as @s[type=zombie,tag=water2] run particle block water ~ ~1 ~ 0 0 0 0.01 5 force
execute as @s[type=zombie,tag=water2,nbt=!{NoAI:1b}] at @s unless block ~ ~-0.1 ~ #spell_main:empty run function spells:water2_cloud
execute as @s[type=falling_block,tag=ice0] run particle spit ^ ^ ^ 0.5 0.5 0.5 0.05 1 force
execute as @s[type=falling_block,tag=ice0,nbt={Time:399}] run data remove entity @e[sort=nearest,limit=1] NoAI
execute as @s[type=player,tag=morph0] run particle cloud ^ ^ ^ 0 0 0 0.1 2
execute as @s[type=player,tag=morph1] run particle bubble_pop ~ ~1 ~ 0.3 1 0.3 0.1 1
execute as @s[type=player,tag=morph2] unless block ~ ~ ~ water run particle soul_fire_flame ~ ~ ~ 0.1 0 0.1 0.025 2
execute as @s[type=player,tag=morph2] if block ~ ~ ~ water run particle soul_fire_flame ~ ~1 ~ 0.3 1 0.3 0.05 1
execute as @s[type=player,tag=coffee] run particle flame ~ ~1 ~ 0.3 1 0.3 0.01 1
execute as @s[tag=blessed] run particle entity_effect ~ ~1 ~ 0.3 1 0.3 0.01 1
execute as @s[type=zombie,tag=tree0] run particle happy_villager ~ ~1 ~ 0 0 0 0.01 1 force
execute as @s[type=zombie,tag=tree0,nbt=!{NoAI:1b}] at @s unless score @s counter matches 0.. unless block ~ ~-0.1 ~ #spell_main:empty run data remove entity @s Motion
execute as @s[type=zombie,tag=tree0,nbt=!{NoAI:1b}] at @s unless score @s counter matches 0.. unless block ~ ~-0.1 ~ #spell_main:empty run scoreboard players set @s counter 0
execute as @s[type=zombie,tag=tree0,nbt=!{NoAI:1b}] at @s unless score @s counter matches 1.. unless block ~ ~-0.1 ~ #spell_main:empty unless entity @e[type=zombie,tag=tree0,scores={counter=0..},distance=1..] run function spells:tree0_animation
execute as @s[type=zombie,tag=tree1] run particle happy_villager ~ ~1 ~ 0 0 0 0.01 2 force
execute as @s[type=zombie,tag=tree1] run particle block spruce_leaves ~ ~1 ~ 0 0 0 0.01 1 force
execute as @s[type=zombie,tag=tree1,nbt=!{NoAI:1b}] at @s unless score @s counter matches 0.. unless block ~ ~-0.1 ~ #spell_main:empty run data remove entity @s Motion
execute as @s[type=zombie,tag=tree1,nbt=!{NoAI:1b}] at @s unless score @s counter matches 0.. unless block ~ ~-0.1 ~ #spell_main:empty run scoreboard players set @s counter 0
execute as @s[type=zombie,tag=tree1,nbt=!{NoAI:1b}] at @s unless score @s counter matches 1.. unless block ~ ~-0.1 ~ #spell_main:empty unless entity @e[type=zombie,tag=tree1,scores={counter=0..},distance=1..] run function spells:tree1_animation
execute as @s[type=zombie,tag=tree2] run particle happy_villager ~ ~1 ~ 0.2 0.2 0.2 0.01 3 force
execute as @s[type=zombie,tag=tree2] run particle totem_of_undying ~ ~1 ~ 0 0 0 0.3 2 force
execute as @s[type=zombie,tag=tree2,nbt=!{NoAI:1b}] at @s unless score @s counter matches 0.. unless block ~ ~-0.1 ~ #spell_main:empty run data remove entity @s Motion
execute as @s[type=zombie,tag=tree2,nbt=!{NoAI:1b}] at @s unless score @s counter matches 0.. unless block ~ ~-0.1 ~ #spell_main:empty run tp @s ~ ~ ~ facing ~1 ~ ~
execute as @s[type=zombie,tag=tree2,nbt=!{NoAI:1b}] at @s unless score @s counter matches 0.. unless block ~ ~-0.1 ~ #spell_main:empty run scoreboard players set @s counter 0
execute as @s[type=zombie,tag=tree2,nbt=!{NoAI:1b}] at @s unless score @s counter matches 1.. unless block ~ ~-0.1 ~ #spell_main:empty unless entity @e[type=zombie,tag=tree2,scores={counter=0..},distance=1..] run function spells:tree2_animation
execute as @s[type=shulker,tag=locate] if block ~ ~ ~ #spell_main:empty run kill
execute as @s[type=area_effect_cloud,tag=tentamissle] run particle end_rod ^ ^ ^ 0 0 0 0.01 1 force
execute as @s[type=area_effect_cloud,tag=tentamissle] unless entity @e[type=small_fireball,tag=tenta,distance=..1] run summon creeper ~ ~ ~ {ExplosionRadius:7,ignited:1,Fuse:0}
execute as @s[type=area_effect_cloud,tag=tentamissle] unless entity @e[type=small_fireball,tag=tenta,distance=..1] run kill
execute as @s[type=area_effect_cloud,tag=explosion0] at @s run function spells:explosion0_sphere
execute as @s[type=area_effect_cloud,tag=explosion1] at @s run function spells:explosion1_sphere
execute as @s[tag=damage] at @s unless entity @e[tag=!from_spell,type=!#spell_main:soulless,distance=..5] run kill

execute if block ~ ~-0.1 ~ air run effect give @s[tag=morph0] levitation 1 230 true
execute if block ~ ~-0.1 ~ air run effect give @s[tag=morph0] slow_falling 1 0 true
execute unless block ~ ~-0.1 ~ air run effect clear @s[tag=morph0] levitation
execute unless block ~ ~-0.1 ~ air run effect clear @s[tag=morph0] slow_falling

execute if block ~ ~-0.1 ~ air run effect give @s[tag=morph2] levitation 1 220 true
execute if block ~ ~-0.1 ~ air run effect give @s[tag=morph2] slow_falling 1 0 true
execute unless block ~ ~-0.1 ~ air run effect clear @s[tag=morph2] levitation
execute unless block ~ ~-0.1 ~ air run effect clear @s[tag=morph2] slow_falling

execute unless entity @s[type=player,tag=morph0,nbt={ActiveEffects:[{Id:1b,Amplifier:10b}]}] run tag @s remove morph0
execute unless entity @s[type=player,tag=morph1,nbt={ActiveEffects:[{Id:30b,Amplifier:10b}]}] run tag @s remove morph1
execute unless entity @s[type=player,tag=morph2,nbt={ActiveEffects:[{Id:1b,Amplifier:20b}]}] run tag @s remove morph2
execute unless entity @s[type=player,tag=coffee,nbt={ActiveEffects:[{Id:3b,Amplifier:127b}]}] run tag @s remove coffee
execute unless entity @s[tag=blessed,nbt={ActiveEffects:[{Id:26b,Amplifier:30b}]}] run tag @s remove blessed
execute if entity @s[tag=!from_spell,tag=!morph0,tag=!morph1,tag=!morph2,tag=!coffee,tag=!blessed] run tag @s remove passive