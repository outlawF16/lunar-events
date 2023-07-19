execute if score @p nm.rng matches 1 if score @p days matches 7 run schedule function lunarevents:nethermoon/nethermoon 3t
weather clear
execute if score @p time matches 13100 run function lunarevents:nethermoon/replace_mob
execute if score @p time matches 13070 run function lunarevents:nethermoon/ambient/main
execute if score @p time matches 13055 run function lunarevents:nethermoon/darkness
execute if score @p time matches 13055 run function lunarevents:nethermoon/nosleep
execute if score @p time matches 13030 run stopsound @a

execute as @a[scores={title=1}] if score @s time matches 13050 run title @s title {"text":"Nether Moon!","color":"dark_red"}
execute as @a[scores={title=1}] if score @s time matches 13050 run title @s subtitle {"text":"The Nether seeps into your world...","bold":true,"color":"gold"}
execute as @a[scores={title=1}] if score @s time matches 13050 at @s run playsound block.portal.travel master @s ~ ~ ~ 1 0.5

execute as @a[scores={chat=1}] if score @s time matches 13050 run tellraw @s ["",{"text":"The Nether seeps into the overworld...","bold":true,"italic":true,"underlined":true,"color":"red"},{"text":"\n"},{"text":"\n- Overworld mobs replaced with mobs from the Nether\n- Sleeping is disabled\n- Damage taken if surrounded by complete darkness","color":"yellow"}]

execute as @a[predicate=lunarevents:level/56-384] at @s unless entity @p[distance=..45] run particle crimson_spore ~ ~ ~ 50 8 50 0 4000 normal
execute as @a[predicate=lunarevents:level/56-384] at @s if entity @p[distance=..45] at @r[distance=..45,limit=1] run particle crimson_spore ~ ~ ~ 50 8 50 0 4000 normal 
execute as @a[predicate=lunarevents:level/56-384] at @s unless entity @p[distance=..20] run particle small_flame ~ ~ ~ 25 8 25 0 100 normal
execute as @a[predicate=lunarevents:level/56-384] at @s if entity @p[distance=..20] at @r[distance=..20,limit=1] run particle small_flame ~ ~ ~ 25 8 25 0 100 normal