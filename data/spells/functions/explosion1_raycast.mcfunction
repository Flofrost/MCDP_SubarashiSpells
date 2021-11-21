scoreboard players add @s counter 1
execute unless score @s counter matches 150.. if block ^ ^ ^ #spell_main:empty positioned ^ ^ ^-1 run function spells:explosion1_raycast
execute unless block ^ ^ ^ #spell_main:empty run scoreboard players set @s counter 150
execute if score @s counter matches 150.. if score @e[type=armor_stand,tag=explosion1,sort=nearest,limit=1] id = @s id run tp @e[type=armor_stand,tag=explosion1,sort=nearest,limit=1] ^ ^ ^
execute if score @s counter matches 150.. run scoreboard players reset @s counter