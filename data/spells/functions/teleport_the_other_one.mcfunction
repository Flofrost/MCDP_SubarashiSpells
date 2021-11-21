execute at @s run playsound entity.enderman.teleport master @a ~ ~ ~ 1 0.7
execute at @s run particle dust 1 0 0.9 7 ~ ~1 ~ 0 0.5 0 0.1 30 force
data modify entity @s Rotation set from entity @p Rotation
data modify entity @s Pos set from entity @p SelectedItem.tag.Pos
execute if score @s id = @p id run tp @p @s
execute at @s run playsound entity.enderman.teleport master @a ~ ~ ~ 1 0.7
execute at @s run particle dust 1 0 0.9 7 ~ ~1 ~ 0 0.5 0 0.1 30 force