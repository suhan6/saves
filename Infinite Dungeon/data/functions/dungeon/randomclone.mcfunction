
summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent36942","randomEvent369421"]}
summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent36942","randomEvent369422"]}
summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent36942","randomEvent369423"]}
summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent36942","randomEvent369424"]}
summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent36942","randomEvent369425"]}
summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent36942","randomEvent369426"]}

scoreboard players tag @r[type=area_effect_cloud,tag=randomEvent36942] add chosenToExecute

execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent369421] ~ ~ ~ clone 4 21 -10 3 21 -11 ~ ~1 ~-1
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent369422] ~ ~ ~ clone 4 21 -7 3 21 -8 ~ ~1 ~-1
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent369423] ~ ~ ~ clone 4 21 -5 3 21 -4 ~ ~1 ~-1
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent369424] ~ ~ ~ clone 3 21 -2 4 21 -1 ~ ~1 ~-1
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent369425] ~ ~ ~ clone 3 21 -13 4 21 -14 ~ ~1 ~-1
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent369426] ~ ~ ~ clone 4 21 -16 3 21 -17 ~ ~1 ~-1

kill @e[tag=randomEvent36942]
setblock ~ ~ ~ stone