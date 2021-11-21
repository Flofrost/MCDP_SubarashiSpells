summon villager ~ ~ ~ {NoAI:1,Tags:["explosion1","cast","from_spell"],Health:1,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:999999}]}
scoreboard players operation @e[type=villager,tag=explosion1,sort=nearest,limit=1] id = @s id

summon armor_stand ~ ~ ~ {Invulnerable:1,NoGravity:1,Invisible:1,Marker:1,Tags:["from_spell","explosion1"]}
scoreboard players operation @e[type=armor_stand,tag=explosion1,sort=nearest,limit=1] id = @s id

playsound minecraft:block.beacon.activate master @a ~ ~ ~ 10 1.5