execute store result score @s ghast.rng if predicate lunarevents:chance/10

execute if score @s ghast.rng matches 1 run summon ghast ~ ~40 ~ 
execute if score @s ghast.rng matches 1 run tp @s ~ ~-256 ~
tag @s add ghast