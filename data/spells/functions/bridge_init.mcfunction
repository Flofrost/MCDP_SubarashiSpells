summon villager ~ ~ ~ {NoAI:1,Tags:["bridge","cast","from_spell"],Health:1,Invulnerable:1,Silent:1,ActiveEffects:[{Id:14b,ShowParticles:0b,Duration:999999}]}
scoreboard players operation @e[type=villager,tag=bridge,sort=nearest,limit=1] id = @s id

playsound minecraft:block.composter.empty master @a ~ ~ ~ 1 1