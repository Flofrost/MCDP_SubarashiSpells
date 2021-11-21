scoreboard players add @s counter 1
execute if entity @e[distance=..2,tag=!steal,type=!#spell_main:soulless,tag=!from_spell] run scoreboard players set @s counter 15
execute if entity @e[distance=..2,tag=!steal,type=!#spell_main:soulless,tag=!from_spell] store result score @s sublevel run scoreboard players get spells.steal sublevel
execute unless block ^ ^ ^ #spell_main:empty run scoreboard players set @s counter 15
execute unless score @s counter matches 15.. if block ^ ^ ^ #spell_main:empty positioned ^ ^ ^-1 run function spells:steal_raycast
execute if score @s counter matches 15.. if entity @e[type=!player,type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2] run loot give @s kill @e[type=!player,type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2,sort=nearest,limit=1]
execute if score @s counter matches 15.. if entity @e[type=!player,type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2,nbt={HandItems:[{Count:1b}]}] at @p[tag=steal] run summon item ~ ~ ~ {Item:{id:"stone",Count:1},PickupDelay:2,Tags:["steal"]}
execute if score @s counter matches 15.. if entity @e[type=!player,type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2] run data modify entity @e[type=item,tag=steal,sort=nearest,limit=1] Item set from entity @e[type=!player,type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2,limit=1] HandItems[{Count:1b}]
execute if score @s counter matches 15.. if entity @e[type=!player,type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2] run data remove entity @e[type=!player,type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2,limit=1] HandItems[{Count:1b}]
execute if score @s counter matches 15.. if entity @e[type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2] if data entity @e[type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2,sort=nearest,limit=1] SelectedItem at @p[tag=steal] run summon item ~ ~ ~ {Item:{id:"stone",Count:1},PickupDelay:2,Tags:["steal","from_spell"]}
execute if score @s counter matches 15.. if entity @e[type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2] if data entity @e[type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2,sort=nearest,limit=1] SelectedItem run data modify entity @e[type=item,tag=steal,sort=nearest,limit=1] Item set from entity @e[type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2,sort=nearest,limit=1] SelectedItem
execute if score @s counter matches 15.. if entity @e[type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2] if data entity @e[type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2,sort=nearest,limit=1] SelectedItem run replaceitem entity @e[type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2,sort=nearest,limit=1] weapon.mainhand air
execute if score @s counter matches 15.. if entity @e[type=!#spell_main:soulless,tag=!from_spell,tag=!steal,distance=..2] run particle cloud ^ ^ ^ 0 0 0 0.1 20
execute if score @s counter matches 15.. run scoreboard players reset @s counter