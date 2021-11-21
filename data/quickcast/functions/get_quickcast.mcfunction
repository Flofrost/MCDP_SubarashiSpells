replaceitem entity @s weapon.offhand air
summon item ~ ~ ~ {Item:{id:"carrot_on_a_stick",Count:1,tag:{Tags:["quickcast"]}}}
execute store result entity @e[type=item,sort=nearest,limit=1] Item.tag.CustomModelData int 1 run scoreboard players get @s spell

execute if entity @s[scores={spell=3}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Fireball","italic": false,"color":"#E3780E"}'
execute if entity @s[scores={spell=4}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Blazing Rain","italic": false,"color":"#FF4D00"}'
execute if entity @s[scores={spell=6}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Skewer","italic": false,"color":"#FF0099"}'
execute if entity @s[scores={spell=7}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Sting Ray","italic": false,"color":"#FF0000"}'
execute if entity @s[scores={spell=9}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Steal","italic": false,"color":"#A275E6"}'
execute if entity @s[scores={spell=10}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Lightning Strike","italic": false,"color":"#DDDD00"}'
execute if entity @s[scores={spell=11}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Song of Storms","italic": false,"color":"#A19950"}'
execute if entity @s[scores={spell=12}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Light of Saber","italic": false,"color":"#FFD70C"}'
execute if entity @s[scores={spell=13}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Morpho-Rabbit","italic": false,"color":"#D18F3F"}'
execute if entity @s[scores={spell=14}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Morpho-Fish","italic": false,"color":"#4DA6FF"}'
execute if entity @s[scores={spell=15}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Morpho-Frog","italic": false,"color":"#036100"}'
execute if entity @s[scores={spell=16}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Coffee Coffee","italic": false,"color":"dark_red"}'
execute if entity @s[scores={spell=17}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Morning Wood","italic": false,"color":"#39BD00"}'
execute if entity @s[scores={spell=18}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Yeetus Thornus","italic": false,"color":"dark_green"}'
execute if entity @s[scores={spell=19}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Dryad\'s Heaven","italic": false,"color":"dark_green"}'
execute if entity @s[scores={spell=20}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Schadenfreude","italic": false,"color":"#FFA203"}'
execute if entity @s[scores={spell=21}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Uno Reverse Card","italic": false,"color":"#00C400"}'
execute if entity @s[scores={spell=22}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Create Water","italic": false,"color":"#0099FF"}'
execute if entity @s[scores={spell=23}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Fluid Drain","italic": false,"color":"#00047D"}'
execute if entity @s[scores={spell=25}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Cold Snap","italic": false,"color":"#80D4FF"}'
execute if entity @s[scores={spell=26}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Cursed Ice Prison","italic": false,"color":"#9CD1FF"}'
execute if entity @s[scores={spell=27}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Bridge","italic": false,"color":"#573013"}'
execute if entity @s[scores={spell=29}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Echolocator","italic": false,"color":"#AE70FF"}'
execute if entity @s[scores={spell=32}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Heal","italic": false,"color":"#FF1133"}'
execute if entity @s[scores={spell=36}] run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"The Amputator","italic": false,"color":"#FF2E2E"}'

execute unless score @s spell matches 3..4 unless score @s spell matches 6..7 unless score @s spell matches 9..23 unless score @s spell matches 25..27 unless score @s spell matches 29 unless score @s spell matches 32 unless score @s spell matches 36 run data modify entity @e[type=item,sort=nearest,limit=1] Item.tag.display.Name set value '{"text":"Unavailable Spell","italic": false,"color":"#000000"}'



tag @s remove casting
scoreboard players reset @s spell