execute store result score @s hoglin.rng if predicate lunarevents:chance/20

execute if score @s hoglin.rng matches 1 run summon hoglin ~ ~ ~ {IsImmuneToZombification:1b}
execute if score @s hoglin.rng matches 1 run tp @s ~ ~-256 ~
tag @s add hoglin