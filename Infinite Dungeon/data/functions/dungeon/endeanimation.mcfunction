scoreboard players add @a[score_endetimer_min=1] endetimer 1
execute @a[score_endetimer_min=8,score_endetimer=8] ~ ~ ~ title @s subtitle {"text":"","color":"gray"}
execute @a[score_endetimer_min=8,score_endetimer=8] ~ ~ ~ title @s times 10 20 10
execute @a[score_endetimer_min=8,score_endetimer=12] ~ ~ ~ particle lava ~ ~ ~ 0.1 0.1 0.1 0.3 25
execute @a[score_endetimer_min=2,score_endetimer=2] ~ ~ ~ effect @s instant_health 1 100 true

execute @a[score_endetimer_min=10,score_endetimer=10] ~ ~ ~ title @s title {"text":"This was","color":"gray"}
execute @a[score_endetimer_min=59,score_endetimer=59] ~ ~ ~ title @s times 20 30 20
execute @a[score_endetimer_min=60,score_endetimer=60] ~ ~ ~ title @s title {"text":"The Infinite Dungeon","color":"gold"}
execute @a[score_endetimer_min=132,score_endetimer=132] ~ ~ ~ title @s times 10 20 10
execute @a[score_endetimer_min=132,score_endetimer=132] ~ ~ ~ title @s title ["",{"text":"By ","color":"gray"},{"text":"_Skyball_","color":"gold"}]
execute @a[score_endetimer_min=180,score_endetimer=180] ~ ~ ~ title @s title ["",{"text":"and ","color":"gray"},{"text":"1chBin1ch","color":"gold"}]
execute @a[score_endetimer_min=240,score_endetimer=240] ~ ~ ~ title @s times 20 30 20
execute @a[score_endetimer_min=240,score_endetimer=240] ~ ~ ~ title @s subtitle ["",{"text":"for ","color":"gray"},{"text":"playing","color":"gold"},{"text":"!","color":"gray"}]
execute @a[score_endetimer_min=240,score_endetimer=240] ~ ~ ~ title @s title ["",{"text":"Thanks so ","color":"gray"},{"text":"much","color":"gold"}]

execute @a[score_endetimer_min=300,score_endetimer=300] ~ ~ ~ scoreboard players tag @s add trashot41738
execute @a[score_endetimer_min=300,score_endetimer=300] ~ ~ ~ scoreboard players set @a endetimer 0