####################################################################
# THIS FUNCTION WAS MADE BY QMAGNET
# JANUARY 6 2018 / FEBRUARY 22 2019
# GIVE MAP MAKERS THE CREDIT THEY DESERVE
# YOUTUBERS, TELL YOUR VIEWERS ABOUT OUR CHANNELS
# YouTube -> https://youtube.com/theqmagnet
# Twitter -> https://twitter.com/theqmagnet
####################################################################

#scoreboard objectives setdisplay sidebar Boss1Attack

execute at @e[tag=ArenaBoss1,type=ocelot,nbt={OnGround:1b}] unless block ~ ~ ~ skeleton_skull run scoreboard players add @e[tag=MainArenaAEC,scores={Boss1Attack=0..}] Boss1Attack 1
scoreboard players set @e[tag=MainArenaAEC,scores={Boss1Attack=100..}] Boss1Attack 0

execute if entity @e[tag=MainArenaAEC,scores={Boss1Attack=99}] at @e[tag=ArenaBoss1,type=ocelot] run summon area_effect_cloud ~ ~ ~ {Tags:["ArenaAEC","CatPeeAEC"],Duration:200}

scoreboard players add @e[tag=CatPeeAEC] Boss1Attack 1
execute at @e[tag=CatPeeAEC,scores={Boss1Attack=1}] run summon falling_block ~ ~-0.95 ~ {BlockState:{Name:"minecraft:yellow_terracotta"},NoGravity:1b,DropItem:false,Time:-200,Tags:["ArenaCatPeeBlock"]}
execute at @e[tag=CatPeeAEC,scores={Boss1Attack=1}] run summon falling_block ~1 ~-0.95 ~ {BlockState:{Name:"minecraft:yellow_terracotta"},NoGravity:1b,DropItem:false,Time:-200,Tags:["ArenaCatPeeBlock"]}
execute at @e[tag=CatPeeAEC,scores={Boss1Attack=1}] run summon falling_block ~1 ~-0.95 ~1 {BlockState:{Name:"minecraft:yellow_terracotta"},NoGravity:1b,DropItem:false,Time:-200,Tags:["ArenaCatPeeBlock"]}
execute at @e[tag=CatPeeAEC,scores={Boss1Attack=1}] run summon falling_block ~ ~-0.95 ~1 {BlockState:{Name:"minecraft:yellow_terracotta"},NoGravity:1b,DropItem:false,Time:-200,Tags:["ArenaCatPeeBlock"]}

execute at @e[tag=ArenaCatPeeBlock] run particle ambient_entity_effect ~ ~ ~ 0.2 0.1 0.2 0 1 force
execute as @a at @s if entity @e[tag=CatPeeAEC,distance=..0.5] run effect give @s nausea 30 10

execute if entity @e[tag=MainArenaAEC,scores={Boss1Attack=50}] run data merge entity @e[tag=ArenaBoss1,type=silverfish,limit=1] {NoAI:0b}
execute if entity @e[tag=MainArenaAEC,scores={Boss1Attack=299}] run data merge entity @e[tag=ArenaBoss1,type=silverfish,limit=1] {NoAI:1b}

execute if entity @e[tag=ArenaBoss1,type=silverfish,nbt=!{NoAI:1b}] store result entity @e[tag=ArenaBoss1,type=ocelot,limit=1] Rotation[0] float 1 run data get entity @e[tag=ArenaBoss1,type=silverfish,limit=1] Rotation[0]
execute if entity @e[tag=ArenaBoss1,type=silverfish,nbt={NoAI:1b}] store result entity @e[tag=ArenaBoss1,type=silverfish,limit=1] Rotation[0] float 1 run data get entity @e[tag=ArenaBoss1,type=ocelot,limit=1] Rotation[0]


effect give @e[tag=ArenaBoss1,type=ocelot] resistance 1 2 true

# HEALTH REGEN
scoreboard objectives add ArenaBoss1Regen deathCount
execute if entity @a[scores={ArenaBoss1Regen=1..}] run effect give @e[tag=ArenaBoss1] regeneration 2 5 false
scoreboard players reset @a[scores={ArenaBoss1Regen=1..}] ArenaBoss1Regen




#execute if entity @e[tag=BossMooshroom] 




#{ReapplicationDelay:20,Radius:2.0f,Potion:"minecraft:strong_poison",DurationOnUse:0,RadiusPerTick:-0.005f,Particle:"minecraft:entity_effect",RadiusOnUse:-0.5f,WaitTime:10,Age:46}

