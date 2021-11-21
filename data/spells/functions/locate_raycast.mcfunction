scoreboard players add @s counter 1
execute align xyz if block ~ ~ ~ #spell_main:ores unless entity @e[type=shulker,tag=locate,distance=..0.5] run summon shulker ~ ~ ~ {NoAI:1,Silent:1,NoGravity:1,Glowing:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:99999,ShowParticles:0b},{Id:11,Amplifier:127,Duration:1600,ShowParticles:0b}],Tags:["locate","passive","from_spell"],DeathLootTable:"minecraft:not_a_real_mob"}
execute align xyz if block ~ ~ ~ coal_ore as @e[type=shulker,tag=locate,sort=nearest,limit=1] run team join coal_color @s
execute align xyz if block ~ ~ ~ iron_ore as @e[type=shulker,tag=locate,sort=nearest,limit=1] run team join iron_color @s
execute align xyz if block ~ ~ ~ gold_ore as @e[type=shulker,tag=locate,sort=nearest,limit=1] run team join gold_color @s
execute align xyz if block ~ ~ ~ nether_gold_ore as @e[type=shulker,tag=locate,sort=nearest,limit=1] run team join gold_color @s
execute align xyz if block ~ ~ ~ redstone_ore as @e[type=shulker,tag=locate,sort=nearest,limit=1] run team join redstone_color @s
execute align xyz if block ~ ~ ~ lapis_ore as @e[type=shulker,tag=locate,sort=nearest,limit=1] run team join lapis_color @s
execute align xyz if block ~ ~ ~ diamond_ore as @e[type=shulker,tag=locate,sort=nearest,limit=1] run team join diamond_color @s
execute align xyz if block ~ ~ ~ emerald_ore as @e[type=shulker,tag=locate,sort=nearest,limit=1] run team join emerald_color @s
execute align xyz if block ~ ~ ~ ancient_debris as @e[type=shulker,tag=locate,sort=nearest,limit=1] run team join netherite_color @s
execute unless score @s counter matches 70.. positioned ^ ^ ^-1 run function spells:locate_raycast
execute if score @s counter matches 70.. run scoreboard players reset @s counter