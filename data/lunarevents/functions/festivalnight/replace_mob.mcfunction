execute if score @p fn.rng matches 1 if score @p days matches 7 run schedule function lunarevents:festivalnight/replace_mob 15t

execute at @a[predicate=lunarevents:level/56-384] run particle glow_squid_ink ~ ~30 ~ 120 10 120 0 25 normal

execute as @e[type=squid,tag=!glowsquid] at @s run function lunarevents:festivalnight/replace/glowsquid
execute as @e[type=cod,tag=!axolotl,limit=5] at @s run function lunarevents:festivalnight/replace/axolotl
execute as @e[type=#lunarevents:hostile,limit=1,tag=!firework,predicate=lunarevents:level/56-384] at @s run function lunarevents:festivalnight/replace/firework1
execute as @e[type=creeper,limit=1,tag=!firework,predicate=lunarevents:level/56-384] at @s run function lunarevents:festivalnight/replace/firework2
execute as @e[type=creeper,limit=1,tag=!firework,predicate=lunarevents:level/56-384] at @s run function lunarevents:festivalnight/replace/firework3
execute as @e[type=#lunarevents:hostile,tag=!star,limit=3] at @s run function lunarevents:festivalnight/replace/star