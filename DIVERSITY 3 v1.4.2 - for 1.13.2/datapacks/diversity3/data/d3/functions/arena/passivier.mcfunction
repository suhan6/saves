####################################################################
# THIS FUNCTION WAS MADE BY QMAGNET
# JANUARY 8 2019 / MAY 2 2019
# GIVE MAP MAKERS THE CREDIT THEY DESERVE
# YOUTUBERS, TELL YOUR VIEWERS ABOUT OUR CHANNELS
# YouTube -> https://youtube.com/theqmagnet
# Twitter -> https://twitter.com/theqmagnet
####################################################################

#scoreboard objectives setdisplay sidebar Passivier

scoreboard players add @e[scores={Passivier=0..}] Passivier 1
execute if entity @e[scores={Passivier=2}] run playsound item.trident.thunder master @a 0 73 2000 2 1 1
execute if entity @e[scores={Passivier=2}] run playsound block.end_portal.spawn master @a 0 73 2000 2 1 1

execute if entity @e[scores={Passivier=2}] at @e[tag=ArenaAlcoveMob] run particle poof ~ ~ ~ 0.3 0.3 0.3 0 15 force

execute if entity @e[scores={Passivier=2}] at @e[tag=ArenaAlcoveMob,type=slime] run summon sheep ~ ~ ~ {CustomName:"{\"text\":\"Slime\",\"color\":\"green\"}",CustomNameVisible:1b,Rotation:[90f,0f],Color:5b,Age:-9999999,Tags:["ArenaMob","ArenaSlime","ArenaAlcoveMob","ArenaAlcove1Mob","Passive"]}
execute if entity @e[scores={Passivier=2}] at @e[tag=ArenaAlcoveMob,type=magma_cube] run summon sheep ~ ~ ~ {CustomName:"{\"text\":\"Magma Cube\",\"color\":\"gold\"}",CustomNameVisible:1b,Rotation:[90f,0f],Color:1b,Age:-9999999,Tags:["ArenaMob","ArenaMagmaCube","ArenaAlcoveMob","ArenaAlcove1Mob","Passive"]}
execute if entity @e[scores={Passivier=2}] at @e[tag=ArenaAlcoveMob,type=spider] run summon sheep ~ ~ ~ {CustomName:"{\"text\":\"Strider\",\"color\":\"aqua\"}",CustomNameVisible:1b,Rotation:[90f,0f],Color:3b,Age:-9999999,Tags:["ArenaMob","ArenaStray","ArenaAlcoveMob","ArenaAlcove1Mob","Passive"]}

execute if entity @e[scores={Passivier=2}] at @e[tag=ArenaAlcoveMob,type=zombie] run summon cow ~ ~ ~ {CustomName:"{\"text\":\"Zombie\",\"color\":\"dark_green\"}",CustomNameVisible:1b,Rotation:[90f,0f],Age:-9999999,Tags:["ArenaMob","ArenaZombie","ArenaAlcoveMob","ArenaAlcove2Mob","Passive"]}
execute if entity @e[scores={Passivier=2}] at @e[tag=ArenaAlcoveMob,type=witch] run summon cow ~ ~ ~ {CustomName:"{\"text\":\"Witch\",\"color\":\"dark_purple\"}",CustomNameVisible:1b,Rotation:[90f,0f],Age:-9999999,Tags:["ArenaMob","ArenaWitch","ArenaAlcoveMob","ArenaAlcove2Mob","Passive"]}
execute if entity @e[scores={Passivier=2}] at @e[tag=ArenaAlcoveMob,type=vindicator] run summon cow ~ ~ ~ {CustomName:"{\"text\":\"Vindicator\",\"color\":\"white\"}",CustomNameVisible:1b,Rotation:[90f,0f],Age:-9999999,Tags:["ArenaMob","ArenaVindicator","ArenaAlcoveMob","ArenaAlcove2Mob","Passive"]}

execute if entity @e[scores={Passivier=2}] at @e[tag=ArenaAlcoveMob,type=skeleton] run summon pig ~ ~ ~ {CustomName:"{\"text\":\"Skeleton\",\"color\":\"blue\"}",CustomNameVisible:1b,Rotation:[270f,0f],Age:-9999999,Tags:["ArenaMob","ArenaSkeleton","ArenaAlcoveMob","ArenaAlcove3Mob","Passive"]}
execute if entity @e[scores={Passivier=2}] at @e[tag=ArenaAlcoveMob,type=creeper] run summon pig ~ ~ ~ {CustomName:"{\"text\":\"Creeper\",\"color\":\"dark_aqua\"}",CustomNameVisible:1b,Rotation:[270f,0f],Age:-9999999,Tags:["ArenaMob","ArenaCreeper","ArenaAlcoveMob","ArenaAlcove3Mob","Passive"]}
execute if entity @e[scores={Passivier=2}] at @e[tag=ArenaAlcoveMob,type=evoker] run summon pig ~ ~ ~ {CustomName:"{\"text\":\"Evoker\",\"color\":\"gray\"}",CustomNameVisible:1b,Rotation:[270f,0f],Age:-9999999,Tags:["ArenaMob","ArenaEvoker","ArenaAlcoveMob","ArenaAlcove3Mob","Passive"]}

execute if entity @e[scores={Passivier=2}] at @e[tag=ArenaAlcoveMob,type=cave_spider] run summon donkey ~ ~ ~ {CustomName:"{\"text\":\"Cave Spider\",\"color\":\"red\"}",CustomNameVisible:1b,Rotation:[270f,0f],Age:-9999999,Tags:["ArenaMob","ArenaCaveSpider","ArenaAlcoveMob","ArenaAlcove4Mob","Passive"]}
execute if entity @e[scores={Passivier=2}] at @e[tag=ArenaAlcoveMob,type=zombie_horse] run summon donkey ~ ~ ~ {CustomName:"{\"text\":\"Zombie Jockey\",\"color\":\"dark_red\"}",CustomNameVisible:1b,Rotation:[270f,0f],Age:-9999999,Tags:["ArenaMob","ArenaBabyZombie","ArenaAlcoveMob","ArenaAlcove4Mob","Passive"]}
execute if entity @e[scores={Passivier=2}] at @e[tag=ArenaAlcoveMob,type=wither_skeleton] run summon donkey ~ ~ ~ {CustomName:"{\"text\":\"Wither Skragon\",\"color\":\"gray\"}",CustomNameVisible:1b,Rotation:[270f,0f],Age:-9999999,Tags:["ArenaMob","ArenaWitherSkeleton","ArenaAlcoveMob","ArenaAlcove4Mob","Passive"]}

execute if entity @e[scores={Passivier=2}] at @e[tag=ArenaAlcoveMob,type=vex] run summon chicken ~ ~ ~ {CustomName:"{\"text\":\"Vex\",\"color\":\"light_purple\"}",CustomNameVisible:1b,Rotation:[270f,0f],Age:-9999999,Tags:["ArenaMob","ArenaVex","ArenaAlcoveMob","ArenaAlcove3Mob","Passive"]}




# DISABLE SPAWNING
scoreboard players set @e[tag=MainArenaAEC] SpawnSlime 0
scoreboard players set @e[tag=MainArenaAEC] SpawnZombie 0
scoreboard players set @e[tag=MainArenaAEC] SpawnSkeleton 0
scoreboard players set @e[tag=MainArenaAEC] SpawnCaveSpider 0

scoreboard players set @e[tag=MainArenaAEC] SpawnMagmaCube 0
scoreboard players set @e[tag=MainArenaAEC] SpawnWitch 0
scoreboard players set @e[tag=MainArenaAEC] SpawnCreeper 0
scoreboard players set @e[tag=MainArenaAEC] SpawnBabyZombie 0

scoreboard players set @e[tag=MainArenaAEC] SpawnStray 0
scoreboard players set @e[tag=MainArenaAEC] SpawnVindicator 0
scoreboard players set @e[tag=MainArenaAEC] SpawnEvoker 0
scoreboard players set @e[tag=MainArenaAEC] SpawnWSkeleton 0


# AFTER 1 MINUTE
execute if entity @e[scores={Passivier=2..1199}] as @e[tag=ArenaAlcoveMob,tag=!Passive] at @s run teleport @s ~ ~-100 ~

execute if entity @e[scores={Passivier=1160}] at @e[tag=Passive] run playsound entity.zombie_villager.converted master @a ~ ~ ~ 0.5 0.5 0
execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive] run playsound entity.shulker.shoot ambient @a ~ ~ ~ 0.5 0.5 0
execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive] run particle poof ~ ~ ~ 0.3 0.3 0.3 0 15 force

execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive,tag=ArenaSlime] run summon slime ~ ~ ~ {Attributes:[{Name:"generic.followRange",Base:40.0},{Name:"generic.movementSpeed",Base:0.25}],Size:2,PersistenceRequired:1b,PersistenceRequired:1b,Rotation:[90f,0f],Team:ArenaMob,Tags:["ArenaMob","ArenaSlime","ArenaAlcoveMob","ArenaAlcove1Mob"]}

execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive,tag=ArenaZombie] run summon zombie ~ ~ ~ {Attributes:[{Name:"generic.followRange",Base:40.0},{Name:"generic.attackDamage",Base:1.5},{Name:"generic.movementSpeed",Base:0.23}],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],PersistenceRequired:1b,Rotation:[90f,0f],Team:ArenaMob,Tags:["ArenaMob","ArenaZombie","ArenaAlcoveMob","ArenaAlcove2Mob"]}
execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive,tag=ArenaSkeleton] run summon skeleton ~ ~ ~ {Attributes:[{Name:"generic.followRange",Base:20.0},{Name:"generic.attackDamage",Base:1.5}],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b}],PersistenceRequired:1b,Rotation:[270f,0f],Team:ArenaMob,Tags:["ArenaMob","ArenaSkeleton","ArenaAlcoveMob","ArenaAlcove3Mob"]}
execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive,tag=ArenaCaveSpider] run summon cave_spider ~ ~ ~ {Attributes:[{Name:"generic.followRange",Base:40.0},{Name:"generic.attackDamage",Base:1.5},{Name:"generic.movementSpeed",Base:0.3}],PersistenceRequired:1b,Rotation:[270f,0f],Team:ArenaMob,Tags:["ArenaMob","ArenaCaveSpider","ArenaAlcoveMob","ArenaAlcove4Mob"]}

execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive,tag=ArenaMagmaCube] run summon magma_cube ~ ~ ~ {Attributes:[{Name:"generic.followRange",Base:40.0},{Name:"generic.movementSpeed",Base:0.27}],Size:2,PersistenceRequired:1b,PersistenceRequired:1b,Rotation:[90f,0f],Team:ArenaMob,Tags:["ArenaMob","ArenaMagmaCube","ArenaAlcoveMob","ArenaAlcove1Mob"]}
execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive,tag=ArenaWitch] run summon witch ~ ~ ~ {Attributes:[{Name:"generic.maxHealth",Base:15.0},{Name:"generic.followRange",Base:35.0},{Name:"generic.attackDamage",Base:1.5},{Name:"generic.movementSpeed",Base:0.20}],PersistenceRequired:1b,Rotation:[90f,0f],Team:ArenaMob,Tags:["ArenaMob","ArenaWitch","ArenaAlcoveMob","ArenaAlcove2Mob"]}
execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive,tag=ArenaCreeper] run summon creeper ~ ~ ~ {Attributes:[{Name:"generic.followRange",Base:30.0},{Name:"generic.attackDamage",Base:1.5}],PersistenceRequired:1b,Rotation:[270f,0f],Team:ArenaMob,Tags:["ArenaMob","ArenaCreeper","ArenaAlcoveMob","ArenaAlcove3Mob"]}
execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive,tag=ArenaBabyZombie] run summon zombie_horse ~ ~ ~ {PersistenceRequired:1b,Tame:1b,Rotation:[270f,0f],Team:ArenaMob,Tags:["ArenaMob","ArenaZombieHorse","ArenaAlcoveMob","ArenaAlcove4Mob"],Passengers:[{id:"minecraft:zombie_villager",IsBaby:true,Attributes:[{Name:"generic.followRange",Base:40.0},{Name:"generic.attackDamage",Base:1.5},{Name:"generic.movementSpeed",Base:0.3}],PersistenceRequired:1b,Rotation:[270f,0f],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],Team:ArenaMob,Tags:["ArenaMob","ArenaBabyZombie","ArenaAlcoveMob","ArenaAlcove4Mob"]}]}

execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive,tag=ArenaStray] run summon stray ~ ~ ~ {Attributes:[{Name:"generic.followRange",Base:40.0},{Name:"generic.attackDamage",Base:1.5},{Name:"generic.movementSpeed",Base:0.2}],PersistenceRequired:1b,Rotation:[90f,0f],ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandItems:[{id:"minecraft:bow",Count:1b}],Team:ArenaMob,Tags:["ArenaMob","ArenaStray","ArenaAlcoveMob","ArenaAlcove1Mob"],Passengers:[{id:"minecraft:spider",Health:30.0f,Attributes:[{Name:"generic.maxHealth",Base:30.0}],PersistenceRequired:1b,Rotation:[90f,0f],Team:ArenaMob,Tags:["ArenaMob","ArenaSpider","ArenaAlcoveMob","ArenaAlcove1Mob"]}]}
execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive,tag=ArenaVindicator] run summon vindicator ~ ~ ~ {Attributes:[{Name:"generic.maxHealth",Base:15.0},{Name:"generic.followRange",Base:25.0},{Name:"generic.attackDamage",Base:1.5},{Name:"generic.movementSpeed",Base:0.20}],HandItems:[{id:"minecraft:iron_axe",Count:1b}],PersistenceRequired:1b,Rotation:[90f,0f],Team:ArenaMob,Tags:["ArenaMob","ArenaVindicator","ArenaAlcoveMob","ArenaAlcove2Mob"]}
execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive,tag=ArenaEvoker] run summon evoker ~ ~ ~ {Attributes:[{Name:"generic.followRange",Base:20.0},{Name:"generic.attackDamage",Base:1.5}],PersistenceRequired:1b,Rotation:[270f,0f],Team:ArenaMob,Tags:["ArenaMob","ArenaEvoker","ArenaAlcoveMob","ArenaAlcove3Mob"]}
execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive,tag=ArenaWitherSkeleton] run summon wither_skeleton ~ ~ ~ {Attributes:[{Name:"generic.followRange",Base:40.0},{Name:"generic.attackDamage",Base:10.0}],HandItems:[{id:"minecraft:stone_sword",Count:0b},{id:"minecraft:stone_sword",Count:1b}],ArmorItems:[{},{},{id:"minecraft:elytra",Count:1b},{id:"minecraft:dragon_head",Count:1b}],PersistenceRequired:1b,Rotation:[270f,0f],Team:ArenaMob,Tags:["ArenaMob","ArenaWitherSkeleton","ArenaAlcoveMob","ArenaAlcove4Mob"]}

execute if entity @e[scores={Passivier=1200}] at @e[tag=Passive,tag=ArenaVex] run summon vex ~ ~ ~ {Rotation:[270f,0f],Team:ArenaMob,Tags:["ArenaMob","ArenaVex","ArenaAlcoveMob","ArenaAlcove3Mob"]}



execute if entity @e[scores={Passivier=1200..}] as @e[tag=ArenaAlcoveMob,tag=Passive] at @s run teleport @s ~ ~-100 ~

execute if entity @e[scores={Passivier=1210..}] run scoreboard objectives remove Passivier

#sheep
#pigs
#cow
#chicken