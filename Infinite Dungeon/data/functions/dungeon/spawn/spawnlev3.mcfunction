scoreboard players tag @r add chosen84122
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841221"]}
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841222"]}
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841223"]}
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841224"]}
scoreboard players tag @r[type=area_effect_cloud,tag=randomEvent84122] add chosenToExecute
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent841221] ~ ~ ~ execute @a ~ ~ ~ execute @e[tag=summonlev3,r=15] ~ ~ ~ summon minecraft:blaze ~ ~ ~ {CustomName:"Level 3",CustomNameVisible:1,Health:30,Attributes:[{Name:"generic.knockbackResistance",Base:0.5f},{Name:"generic.movementSpeed",Base:0.4f}],Tags:["level3","monster"]}
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent841222] ~ ~ ~ execute @a ~ ~ ~ execute @e[tag=summonlev3,r=15] ~ ~ ~ summon minecraft:stray ~ ~ ~ {CustomName:"Level 3",CustomNameVisible:1,Health:30,Attributes:[{Name:"generic.knockbackResistance",Base:0.5f},{Name:"generic.movementSpeed",Base:0.3f}],HandItems:[{id:"minecraft:bow",Count:1},{}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1,tag:{display:{color:5310041}}}],Tags:["level3","monster"]}
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent841223] ~ ~ ~ execute @a ~ ~ ~ execute @e[tag=summonlev3,r=15] ~ ~ ~ summon minecraft:vindication_illager ~ ~ ~ {CustomName:"Level 3",CustomNameVisible:1,Health:30,Attributes:[{Name:"generic.knockbackResistance",Base:0.5f},{Name:"generic.movementSpeed",Base:0.3f}],HandItems:[{id:"minecraft:iron_axe",Count:1},{}],Tags:["level3","monster"]}
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent841224] ~ ~ ~ execute @a ~ ~ ~ execute @e[tag=summonlev3,r=15] ~ ~ ~ summon minecraft:zombie_villager ~ ~1 ~ {CustomName:"Level 3",CustomNameVisible:1,Health:30,Attributes:[{Name:"generic.knockbackResistance",Base:0.5f},{Name:"generic.movementSpeed",Base:0.5f}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1,tag:{display:{color:5310041}}}],Tags:["level3","monster"]}
kill @e[tag=randomEvent84122]
scoreboard players tag @a remove chosen84122

