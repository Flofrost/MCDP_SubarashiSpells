tag @s remove casting
execute store result score @s sublevel run scoreboard players get spells.house sublevel

playsound entity.generic.explode master @a ~ ~ ~ 1 0.5
particle explosion_emitter ~ ~1 ~ 3 1 3 0.1 10 force

execute if entity @s[y_rotation=-45..45] run setblock ~ ~-1 ~ structure_block[mode=load]{rotation:"CLOCKWISE_180",posX:5,mode:"LOAD",posY:0,posZ:5,name:"spell_main:house"}
execute if entity @s[y_rotation=46..135] run setblock ~ ~-1 ~ structure_block[mode=load]{rotation:"COUNTERCLOCKWISE_90",posX:-5,mode:"LOAD",posY:0,posZ:5,name:"spell_main:house"}
execute if entity @s[y_rotation=-135..-46] run setblock ~ ~-1 ~ structure_block[mode=load]{rotation:"CLOCKWISE_90",posX:5,mode:"LOAD",posY:0,posZ:-5,name:"spell_main:house"}
execute unless entity @s[y_rotation=-135..135] run setblock ~ ~-1 ~ structure_block[mode=load]{rotation:"NONE",posX:-5,mode:"LOAD",posY:0,posZ:-5,name:"spell_main:house"}
setblock ~ ~-1 ~1 redstone_block