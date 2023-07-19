execute if score @p days matches 7 if score @p fn.rng matches 1 run schedule function lunarevents:festivalnight/double_ore 9t

execute as @a if score @s diamondMined matches 1.. run give @s diamond 2
execute as @a if score @s diamondMined matches 1.. at @s run playsound block.amethyst_block.chime player @s ~ ~ ~ 1.25 
execute as @a if score @s diamondMined matches 1.. run scoreboard players set @s diamondMined 0

execute as @a if score @s DdiamondMined matches 1.. run give @s diamond 2
execute as @a if score @s DdiamondMined matches 1.. at @s run playsound block.amethyst_block.chime player @s ~ ~ ~ 1.25
execute as @a if score @s DdiamondMined matches 1.. run scoreboard players set @s DdiamondMined 0