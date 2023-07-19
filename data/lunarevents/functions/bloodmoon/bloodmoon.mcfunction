execute if score @p days matches 7 if score @p bm.rng matches 1 run schedule function lunarevents:bloodmoon/bloodmoon 3t
execute if score @p time matches 13100 run function lunarevents:bloodmoon/buff_mob
execute if score @p time matches 13055 run function lunarevents:bloodmoon/nosleep
execute if score @p time matches 13070 run function lunarevents:bloodmoon/ambient/main
execute if score @p time matches 13030 run stopsound @a
weather clear

execute as @a[scores={title=1}] if score @s time matches 13050 run title @s title {"text":"Bloodmoon!","color":"dark_red"}
execute as @a[scores={title=1}] if score @s time matches 13050 run title @s subtitle {"text":"The Blood Moon is rising...","bold":true,"color":"red"}
execute as @a[scores={title=1}] if score @s time matches 13050 at @s run playsound block.end_portal.spawn master @s ~ ~ ~ 1 0.5

execute as @a[scores={chat=1}] if score @s time matches 13050 run tellraw @s ["",{"text":"The blood moon is rising!","bold":true,"italic":true,"underlined":true,"color":"red"},{"text":"\n\n"},{"text":"- Significantly increased monster abilities\n- Sleeping is disabled\n- Phantoms can spawn\n- Monsters are far sighted","color":"yellow"}]

worldborder warning distance 100000000
execute at @e[type=#lunarevents:hostile] run particle falling_dust red_concrete

execute as @a[predicate=lunarevents:level/56-384] at @s unless entity @p[distance=..45] run particle falling_lava ~ ~30 ~ 100 10 100 1 1500 normal
execute as @a[predicate=lunarevents:level/56-384] at @s if entity @p[distance=..45] at @r[distance=..45,limit=1] run particle falling_lava ~ ~30 ~ 50 10 50 0 1500 normal
execute as @a[predicate=lunarevents:level/56-384] at @s unless entity @p[distance=..20] run particle falling_dust red_concrete ~ ~ ~ 25 10 25 0 300 normal
execute as @a[predicate=lunarevents:level/56-384] at @s if entity @p[distance=..20] at @r[distance=..20,limit=1] run particle falling_dust red_concrete ~ ~ ~ 25 10 25 0 300 normal 