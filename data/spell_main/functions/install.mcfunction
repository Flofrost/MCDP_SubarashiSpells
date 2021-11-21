scoreboard objectives add level level
scoreboard objectives add sublevel dummy
scoreboard objectives add spell trigger
scoreboard objectives add upgrade trigger
scoreboard objectives add X dummy
scoreboard objectives add Y dummy
scoreboard objectives add Z dummy
scoreboard objectives add counter dummy
scoreboard objectives add reflect minecraft.custom:minecraft.damage_resisted
scoreboard objectives add cast minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add craft.spell_book minecraft.crafted:minecraft.knowledge_book
scoreboard objectives add quickcast minecraft.used:minecraft.carrot_on_a_stick

team add coal_color
team modify coal_color color black
team add iron_color
team modify iron_color color gray
team add gold_color
team modify gold_color color gold
team add redstone_color
team modify redstone_color color red
team add lapis_color
team modify lapis_color color blue
team add diamond_color
team modify diamond_color color aqua
team modify coal_color collisionRule pushOwnTeam
team add emerald_color
team modify emerald_color color green
team add netherite_color
team modify netherite_color color dark_red

scoreboard objectives remove id
scoreboard objectives add id dummy
scoreboard players set dummy_player_id id 0

gamerule maxCommandChainLength 2147483647
gamerule sendCommandFeedback false

tellraw @a [{"text":"Thank you for using the "},{"text":"Subarashi Spells","color":"gold","bold":true},{"text":" dapapack by "},{"text":"Flofrost","color":"aqua","bold":true},{"text":"!\n"},{"text":"[Hover here for more info]","color":"green","italic":true,"hoverEvent":{"action":"show_text","contents":[{"text":"The spell book (shows as knowledge book) and exp bottles are now craftable!\nUsing this datapack, the amount of xp received is quintupled. "}]}}]

scoreboard players set spells.explosion0 sublevel 40
scoreboard players set spells.explosion1 sublevel 60
scoreboard players set spells.fire0 sublevel 4
scoreboard players set spells.fire1 sublevel 16
scoreboard players set spells.fire2 sublevel 27
scoreboard players set spells.laser0 sublevel 6
scoreboard players set spells.laser1 sublevel 13
scoreboard players set spells.laser2 sublevel 30
scoreboard players set spells.steal sublevel 5
scoreboard players set spells.lightning0 sublevel 3
scoreboard players set spells.lightning1 sublevel 11
scoreboard players set spells.lightning2 sublevel 22
scoreboard players set spells.morph0 sublevel 5
scoreboard players set spells.morph1 sublevel 10
scoreboard players set spells.morph2 sublevel 15
scoreboard players set spells.coffee sublevel 20
scoreboard players set spells.tree0 sublevel 1
scoreboard players set spells.tree1 sublevel 7
scoreboard players set spells.tree2 sublevel 16
scoreboard players set spells.switch sublevel 4
scoreboard players set spells.reflect sublevel 3
scoreboard players set spells.water0 sublevel 2
scoreboard players set spells.water1 sublevel 8
scoreboard players set spells.zip sublevel 24
scoreboard players set spells.ice0 sublevel 16
scoreboard players set spells.ice1 sublevel 12
scoreboard players set spells.bridge sublevel 4
scoreboard players set spells.teleport sublevel 8
scoreboard players set spells.locate sublevel 23
scoreboard players set spells.bless sublevel 20
scoreboard players set spells.horticulture sublevel 11
scoreboard players set spells.heal0 sublevel 7
scoreboard players set spells.house sublevel 20
scoreboard players set spells.tenta sublevel 26
scoreboard players set spells.succ sublevel 0
scoreboard players set spells.heal1 sublevel 17