execute store result score @s axolotl.rng if predicate lunarevents:chance/20

execute if score @s axolotl.rng matches 1 run summon axolotl ~ ~ ~ 
execute if score @s axolotl.rng matches 1 run tp @s ~ ~-256 ~
tag @s add axolotl