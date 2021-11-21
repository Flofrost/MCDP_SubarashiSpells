scoreboard players add @s counter 1
execute if entity @e[distance=..2,tag=!switch,type=!#spell_main:soulless,tag=!from_spell] run tag @s add tele
execute if entity @e[distance=..2,tag=!switch,type=!#spell_main:soulless,tag=!from_spell] store result score @s sublevel run scoreboard players get spells.switch sublevel
execute if entity @e[distance=..2,tag=!switch,type=!#spell_main:soulless,tag=!from_spell] run scoreboard players set @s counter 60
execute unless score @s counter matches 60.. positioned ^ ^ ^-1 run function spells:switch_raycast
execute if score @s[tag=tele] counter matches 60.. run tp @e[sort=nearest,limit=1] @s
execute if score @s[tag=tele] counter matches 60.. run particle reverse_portal ~ ~1 ~ 0 0.5 0 0.4 70 force
execute if score @s[tag=tele] counter matches 60.. run playsound entity.illusioner.mirror_move master @a ^ ^ ^ 1 1.5
execute if score @s[tag=tele] counter matches 60.. run tp @s ^ ^ ^ facing ^ ^ ^-1
execute if score @s[tag=tele] counter matches 60.. run particle reverse_portal ~ ~1 ~ 0 0.5 0 0.4 70 force
execute if score @s[tag=tele] counter matches 60.. run playsound entity.illusioner.mirror_move master @a ^ ^ ^ 1 1.5
execute if score @s counter matches 60.. run tag @s remove tele
execute if score @s counter matches 60.. run scoreboard players reset @s counter