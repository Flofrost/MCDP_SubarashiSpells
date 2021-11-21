scoreboard players add @s counter 1
execute unless score @s counter matches 100.. if block ^ ^ ^ #spell_main:empty positioned ^ ^ ^-1 run function spells:explosion0_raycast
execute unless block ^ ^ ^ #spell_main:empty run scoreboard players set @s counter 100
execute if score @s counter matches 100.. if score @e[type=armor_stand,tag=explosion0,sort=nearest,limit=1] id = @s id run tp @e[type=armor_stand,tag=explosion0,sort=nearest,limit=1] ^ ^ ^
execute if score @s counter matches 100.. run scoreboard players reset @s counter