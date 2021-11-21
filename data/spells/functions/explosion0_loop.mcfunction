execute as @e[type=villager,tag=explosion0] if score @s id = @p id run tp @s ^ ^ ^2.5 facing entity @s feet

execute unless entity @e[type=minecraft:area_effect_cloud,distance=..1,name=explosion0] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:5,CustomName:'{"text":"explosion0"}',Tags:["from_spell"]}
execute as @e[type=minecraft:area_effect_cloud,name=explosion0] at @s run tp @s ~ ~0.05 ~ facing ^3 ^ ^10
execute at @e[type=minecraft:area_effect_cloud,name=explosion0] run particle dust 1 0.1 0 3 ^ ^ ^3 0 0 0 0.01 1
execute at @e[type=minecraft:area_effect_cloud,name=explosion0] run particle dust 1 0.1 0 3 ^ ^ ^-3 0 0 0 0.01 1
execute at @e[type=minecraft:area_effect_cloud,name=explosion0] run particle dust 1 0.1 0 3 ^3 ^ ^ 0 0 0 0.01 1
execute at @e[type=minecraft:area_effect_cloud,name=explosion0] run particle dust 1 0.1 0 3 ^-3 ^ ^ 0 0 0 0.01 1
execute at @e[type=minecraft:area_effect_cloud,name=explosion0] run particle flame ^ ^ ^ 1 0 1 0.01 10
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.166808594 ^0.103972591 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.190570881 ^-0.09347948 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.023104694 ^-0.227207006 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.193661388 ^-0.149905073 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.245524052 ^0.090932123 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.056189361 ^0.273420593 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.21513877 ^0.20450465 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.304837829 ^-0.078927983 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.099779602 ^-0.318020588 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.229322238 ^-0.267128433 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.366852762 ^0.056199775 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.153996924 ^0.358855266 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.234303411 ^0.336632897 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.429485309 ^-0.02178103 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.218457387 ^-0.393584803 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.228307935 ^-0.411332089 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.490266798 ^-0.024863518 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.292184507 ^0.419792935 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.209842744 ^0.488991419 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.546427595 ^0.083709628 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.373552196 ^-0.435136226 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.17785686 ^-0.566870796 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.595032084 ^-0.154064481 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.460275895 ^0.437524863 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.131899141 ^0.641828653 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.633163787 ^0.234498116 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.549469454 ^-0.425321017 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.072250056 ^-0.710492792 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.65815088 ^-0.32283842 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.637780674 ^0.397531733 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^ ^0.769493803 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.66781075 ^0.416249623 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.721608079 ^-0.353965662 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.082952959 ^-0.815743045 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.66068067 ^-0.511404905 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.797385778 ^0.295319263 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.174005651 ^0.846721299 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.636193301 ^0.604746827 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.861903739 ^-0.22316234 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.270056078 ^-0.860730952 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.594755565 ^-0.692807307 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.912612635 ^0.139807113 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.367793106 ^0.857059285 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.537701044 ^0.772536171 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.947852373 ^-0.048069632 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.464023057 ^-0.836009375 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.467111145 ^-0.841573043 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.966949521 ^-0.04903813 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.55596767 ^0.798780547 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.38553381 ^0.898400016 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.970154752 ^0.148622241 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.641466203 ^-0.747218689 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.295660496 ^-0.942338129 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.95843391 ^-0.248155733 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.719037125 ^0.683495753 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.2000377 ^0.973394721 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.933170988 ^0.345608583 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.787797726 ^-0.609800832 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.100878202 ^-0.992016337 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.895869013 ^-0.439444731 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.847287236 ^0.528118172 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^ ^0.998830528 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.847929036 ^0.528518209 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.897267611 ^-0.440130776 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.101126076 ^-0.994453893 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.790549047 ^-0.611930512 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.937570825 ^0.347238103 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^-0.201272754 ^0.97940456 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.724732548 ^0.688909658 ^2 0 0 0 0 1
execute positioned ~ ~1.61 ~ run particle dust 1 0.3 0 0.5 ^0.96802593 ^-0.250639279 ^2 0 0 0 0 1
playsound minecraft:entity.phantom.ambient master @a ~ ~ ~ 0.3 0.1

execute as @e[type=armor_stand,tag=explosion0] at @s run tp @s ^ ^ ^ facing ^13 ^ ^21
execute as @e[type=armor_stand,tag=explosion0] at @s positioned ~ ~20 ~ run particle dust 1 0.3 0 10 ^ ^ ^10 0.5 0.5 0.5 0.01 3 force
execute as @e[type=armor_stand,tag=explosion0] at @s positioned ~ ~20 ~ run particle dust 1 0.3 0 10 ^ ^ ^-10 0.5 0.5 0.5 0.01 3 force
execute as @e[type=armor_stand,tag=explosion0] at @s positioned ~ ~20 ~ run particle dust 1 0.3 0 10 ^10 ^ ^ 0.5 0.5 0.5 0.01 3 force
execute as @e[type=armor_stand,tag=explosion0] at @s positioned ~ ~20 ~ run particle dust 1 0.3 0 10 ^-10 ^ ^ 0.5 0.5 0.5 0.01 3 force
execute as @e[type=armor_stand,tag=explosion0] at @s positioned ~ ~27 ~ run particle dust 0.725 0.22 0 15 ^ ^ ^17 0.5 0.5 0.5 0.01 3 force
execute as @e[type=armor_stand,tag=explosion0] at @s positioned ~ ~27 ~ run particle dust 0.725 0.22 0 15 ^ ^ ^-17 0.5 0.5 0.5 0.01 3 force
execute as @e[type=armor_stand,tag=explosion0] at @s positioned ~ ~27 ~ run particle dust 0.725 0.22 0 15 ^17 ^ ^ 0.5 0.5 0.5 0.01 3 force
execute as @e[type=armor_stand,tag=explosion0] at @s positioned ~ ~27 ~ run particle dust 0.725 0.22 0 15 ^-17 ^ ^ 0.5 0.5 0.5 0.01 3 force
execute as @e[type=armor_stand,tag=explosion0] at @s positioned ~ ~27 ~ run particle flame ^ ^ ^ 6 0 6 0.05 20 force
execute as @e[type=armor_stand,tag=explosion0] at @s run particle flame ^ ^ ^ 0.1 30 0.1 0.01 50 force

execute positioned ~ ~1.61 ~ positioned ^ ^ ^1 facing entity @s eyes run function spells:explosion0_raycast

execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=explosion0] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[predicate=spell_main:sneak] as @e[type=villager,tag=explosion0] if score @s id = @p id run kill @s
execute unless entity @e[distance=..5,tag=cast,type=villager] run title @s actionbar [{"text":"Spell Cancelled","color":"red"}]
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove explosion0
execute unless entity @e[distance=..5,tag=cast,type=villager] run tag @s remove casting
execute unless entity @e[distance=..5,tag=cast,type=villager] as @e[type=armor_stand,tag=explosion0] if score @s id = @p id run kill @s

execute as @s[scores={cast=1..}] at @s as @e[type=armor_stand,tag=explosion0] if score @s id = @p id at @s run kill @e[distance=0.1..10,tag=!from_spell]
execute as @s[scores={cast=1..}] at @s as @e[type=armor_stand,tag=explosion0] if score @s id = @p id at @s run effect give @e[distance=..25] slowness 1 255 true
execute as @s[scores={cast=1..}] at @s as @e[type=armor_stand,tag=explosion0] if score @s id = @p id at @s run effect give @e[distance=..25] jump_boost 1 128 true
execute as @s[scores={cast=1..}] at @s as @e[type=armor_stand,tag=explosion0] if score @s id = @p id at @s run summon area_effect_cloud ~ ~ ~ {Tags:["from_spell","explosion0","passive"],Duration:25}
execute as @s[scores={cast=1..}] at @s as @e[type=armor_stand,tag=explosion0] if score @s id = @p id run kill @s
execute as @s[scores={cast=1..}] as @e[type=villager,tag=explosion0] if score @s id = @p id run tp @s ~ ~-100 ~
execute as @s[scores={cast=1..}] as @e[type=villager,tag=explosion0] if score @s id = @p id run kill @s
execute as @s[scores={cast=1..}] store result score @s sublevel run scoreboard players get spells.explosion0 sublevel
execute as @s[scores={cast=1..}] run tag @s remove explosion0
execute as @s[scores={cast=1..}] run tag @s remove casting