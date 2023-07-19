execute store result score @s magmacube.rng if predicate lunarevents:chance/20

execute if score @s magmacube.rng matches 1 run summon magma_cube ~ ~ ~
execute if score @s magmacube.rng matches 1 run tp @s ~ ~-256 ~
tag @s add magmacube