scoreboard players set @a endetimer 1

summon minecraft:wither_skeleton 10017 20 30 {CustomName:Boss,CustomNameVisible:0,Health:60,Attributes:[{Name:"generic.followRange",Base:50},{Name:"generic.knockbackResistance",Base:0.8f},{Name:"generic.movementSpeed",Base:0.2f},{Name:generic.maxHealth,Base:60}],HandItems:[{id:"minecraft:iron_sword",Count:1},{}],ArmorItems:[{},{},{tag:{ench:[{id:7,lvl:2}],display:{color:1841667}},id:"minecraft:leather_chestplate",Count:1},{id:"minecraft:leather_helmet",Count:1,tag:{display:{color:13748736}}}],Tags:["monster","boss","endboss"]}

execute @e[tag=speedrun] ~ ~ ~ scoreboard players tag @a add stoprun
clear @a
spawnpoint @a -3 76 3