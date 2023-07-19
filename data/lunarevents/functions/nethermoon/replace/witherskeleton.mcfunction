execute store result score @s wskeleton.rng if predicate lunarevents:chance/20

execute if score @s wskeleton.rng matches 1 run summon wither_skeleton ~ ~ ~
execute if score @s wskeleton.rng matches 1 run tp @s ~ ~-256 ~
tag @s add witherskeleton