execute if score @p days matches 7 if score @p bm.rng matches 1 run schedule function lunarevents:bloodmoon/buff_mob 15t

execute as @e[type=#lunarevents:hostile] run effect give @s speed 1 1 true
execute as @e[type=#lunarevents:hostile] run effect give @s jump_boost 1 2 true
execute as @e[type=#lunarevents:hostile] run effect give @s dolphins_grace 1 1 true
execute as @e[type=#lunarevents:hostile] run effect give @s regeneration 1 1 true

execute as @e[type=zombie,tag=!buffed] run data merge entity @s {CanBreakDoors:1b,Attributes:[{Name:"generic.follow_range",Base:45},{Name:"generic.knockback_resistance",Base:0.22},{Name:"zombie.spawn_reinforcements",Base:0.4}]}
execute as @e[type=skeleton,tag=!buffed] run data merge entity @s {Attributes:[{Name:"generic.follow_range",Base:24}]}
execute as @e[type=creeper,tag=!buffed] run data merge entity @s {Attributes:[{Name:"generic.follow_range",Base:33}]}
execute as @e[type=spider] run data merge entity @s {Attributes:[{Name:"generic.follow_range",Base:18}]}
tag @e[type=#lunarevents:hostile] add buffed

execute as @e[type=zombie,tag=!phantom] at @s run function lunarevents:bloodmoon/buff/phantom
execute as @e[type=phantom,tag=!phantomj] at @s run function lunarevents:bloodmoon/buff/phantom_jockey
execute as @e[type=phantom,tag=!drippler,limit=1] at @s run function lunarevents:bloodmoon/buff/drippler
