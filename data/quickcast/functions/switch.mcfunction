tag @s add switch

particle portal ^-0.5 ^1.8 ^ 0 0 0 0.5 2

execute positioned ~ ~1.61 ~ positioned ^ ^ ^3 facing entity @s eyes run function spells:switch_raycast
playsound entity.player.attack.knockback master @a ~ ~ ~ 3 0.1

tag @s remove switch