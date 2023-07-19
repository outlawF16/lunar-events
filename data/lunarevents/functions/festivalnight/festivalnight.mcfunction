execute if score @p days matches 7 if score @p fn.rng matches 1 run schedule function lunarevents:festivalnight/festivalnight 3t
execute if score @p time matches 13070 run function lunarevents:festivalnight/ambient/main
execute if score @p time matches 13055 run function lunarevents:festivalnight/double_ore
execute if score @p time matches 13100 run function lunarevents:festivalnight/replace_mob
execute if score @p time matches 13030 run stopsound @a 
weather clear

execute as @a[scores={title=1}] if score @s time matches 13050 run title @s title {"text":"Festival Night!","color":"yellow"}
execute as @a[scores={title=1}] if score @s time matches 13050 run title @s subtitle {"text":"Nature has blessed you this night...","bold":true,"color":"aqua"}
execute as @a[scores={title=1}] if score @s time matches 13050 at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 0.5

execute as @a[scores={chat=1}] if score @s time matches 13050 run tellraw @s ["",{"text":"You have been blessed by Notch!","bold":true,"italic":true,"underlined":true,"color":"aqua"},{"text":"\n\n"},{"text":"- Crop growth times tripled\n- Squids glow in oceans and rivers\n- Axolotls appear on the surface in lakes\n- Mining diamonds gives you twice the amount\n- Monsters are peaceful this night\n- Sit back and enjoy the view!","color":"yellow"}]

execute run gamerule randomTickSpeed 9
execute at @a run particle electric_spark ~ ~ ~
execute at @e[tag=isStar] run particle end_rod ~ ~10 ~ 0.25 0 0.25 0 5 normal

execute as @e[type=#lunarevents:hostile] run team join lunareventsPassive @s 
execute as @e[type=villager] run team join lunareventsPassive @s
execute as @e[type=iron_golem] run team join lunareventsPassive @s

execute as @a[predicate=lunarevents:structure/village] run effect give @s hero_of_the_village 1 1 true
execute as @a run effect give @s luck 1 1 true

execute as @a[predicate=lunarevents:level/56-384] at @s unless entity @p[distance=..45] run particle glow_squid_ink ~ ~30 ~ 50 10 50 0 80 normal
execute as @a[predicate=lunarevents:level/56-384] at @s if entity @p[distance=..45] at @r[distance=..45,limit=1] run particle glow_squid_ink ~ ~30 ~ 50 10 50 0 80 normal
execute as @a[predicate=lunarevents:level/56-384] at @s unless entity @p[distance=..20] run particle electric_spark ~ ~ ~ 25 8 25 0 200 normal
execute as @a[predicate=lunarevents:level/56-384] at @s if entity @p[distance=..20] at @r[distance=..20,limit=1] run particle electric_spark ~ ~30 ~ 25 8 25 0 200 normal
execute as @a[predicate=lunarevents:level/56-384] at @s unless entity @p[distance=..20] run particle firework ~ ~ ~ 25 8 25 0 80 normal
execute as @a[predicate=lunarevents:level/56-384] at @s if entity @p[distance=..20] at @r[distance=..20,limit=1] run particle firework ~ ~ ~ 25 8 25 0 80 normal