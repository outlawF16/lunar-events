execute if score @p nm.rng matches 1 if score @p days matches 7 run schedule function lunarevents:nethermoon/replace_mob 10t

execute as @e[type=#lunarevents:hostile,predicate=lunarevents:level/56-384,tag=!piglin] at @s unless block ~ ~-1 ~ water run function lunarevents:nethermoon/replace/piglin
execute as @e[type=#lunarevents:hostile,tag=!zpiglin] at @s unless block ~ ~-1 ~ water run function lunarevents:nethermoon/replace/zpiglin
execute as @e[type=#lunarevents:hostile,tag=!blaze,predicate=lunarevents:level/56-384] at @s unless block ~ ~-1 ~ water run function lunarevents:nethermoon/replace/blaze
execute as @e[type=#lunarevents:hostile,tag=!hoglin,predicate=lunarevents:level/56-384] at @s unless block ~ ~-1 ~ water run function lunarevents:nethermoon/replace/hoglin
execute as @e[type=#lunarevents:hostile,tag=!magmacube,predicate=lunarevents:level/56-384] at @s unless block ~ ~-1 ~ water run function lunarevents:nethermoon/replace/magmacube
execute as @e[type=#lunarevents:hostile,tag=!piglinbrute,predicate=lunarevents:level/56-384] at @s unless block ~ ~-1 ~ water run function lunarevents:nethermoon/replace/piglinbrute
execute as @e[type=#lunarevents:hostile,tag=!witherskeleton] at @s unless block ~ ~-1 ~ water run function lunarevents:nethermoon/replace/witherskeleton
execute as @e[type=#lunarevents:hostile,tag=!ghast,predicate=lunarevents:level/56-384] at @s unless block ~ ~-1 ~ water run function lunarevents:nethermoon/replace/ghast