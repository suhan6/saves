scoreboard objectives add minutes dummy
scoreboard objectives add seconds dummy
scoreboard objectives add secondsanders dummy
scoreboard objectives add active dummy

scoreboard players set @a[tag=startrun] minutes 0
scoreboard players set @a[tag=startrun] secondsanders 1
scoreboard players set @a[tag=startrun] active 1

scoreboard players set @a[tag=resetrun] minutes 0
scoreboard players set @a[tag=resetrun] secondsanders 0
scoreboard players set @a[tag=resetrun] active 0


execute @a ~ ~ ~ scoreboard players operation @s seconds = @s secondsanders
execute @a ~ ~ ~ scoreboard players operation @s seconds /= 20 coins

scoreboard players set @a[tag=stoprun] active 0
execute @a[tag=stoprun] ~ ~ ~ tellraw @s ["",{"text":"\n"},{"selector":"@s","color":"gray"},{"text":"'","color":"gray"},{"text":"s ","color":"gold"},{"text":"time: ","color":"gray"},{"score":{"name":"@s","objective":"minutes"},"color":"gold"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"seconds"},"color":"gold"},{"text":"\n "}]
execute @a[tag=stoprun] ~ ~ ~ tellraw @s ["",{"text":"Completed with ","color":"gray"},{"score":{"name":"@e[tag=stats]","objective":"totalppw"},"color":"gold"},{"text":" player","color":"gold"},{"text":"(","color":"gray"},{"text":"s","color":"gold"},{"text":").\n ","color":"gray"}]

scoreboard players add @a[score_active_min=1,score_active=1] secondsanders 1
scoreboard players add @a[score_seconds_min=60,score_seconds=60] minutes 1
scoreboard players set @a[score_seconds_min=60,score_seconds=60] secondsanders 0

execute @a[score_active_min=1,score_active=1] ~ ~ ~ title @s actionbar ["",{"score":{"name":"@s","objective":"minutes"},"color":"gold"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"seconds"},"color":"gold"}]

scoreboard players tag @a remove startrun
scoreboard players tag @a remove stoprun
scoreboard players tag @a remove resetrun


execute @a[x=-3,y=77,z=3,r=3] ~ ~ ~ title @s actionbar ["",{"text":"Coins: ","color":"gray"},{"score":{"name":"@s","objective":"coins"},"color":"gold"}]
