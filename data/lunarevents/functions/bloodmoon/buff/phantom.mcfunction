execute store result score @s phantom.rng if predicate lunarevents:chance/10

execute if score @s phantom.rng matches 1 run summon phantom ~ ~60 ~ {Health:4}
execute if score @s phantom.rng matches 1 run tp @s ~ ~-256 ~
tag @s add phantom