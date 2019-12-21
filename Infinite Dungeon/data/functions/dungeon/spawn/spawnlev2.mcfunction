scoreboard players tag @r add chosen84122
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841221"]}
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841222"]}
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841223"]}
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841224"]}
scoreboard players tag @r[type=area_effect_cloud,tag=randomEvent84122] add chosenToExecute
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent841221] ~ ~ ~ execute @a ~ ~ ~ execute @e[tag=summonlev2,r=15] ~ ~ ~ summon minecraft:creeper ~ ~ ~ {CustomName:"Level 2",CustomNameVisible:1,Health:20,Tags:["level2","monster"]}
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent841222] ~ ~ ~ execute @a ~ ~ ~ execute @e[tag=summonlev2,r=15] ~ ~ ~ summon minecraft:wither_skeleton ~ ~ ~ {CustomName:"Level 2",CustomNameVisible:1,Health:20,HandItems:[{id:"minecraft:stone_sword",Count:1},{}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1,tag:{display:{color:13580848}}}],Tags:["level2","monster"]}
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent841223] ~ ~ ~ execute @a ~ ~ ~ execute @e[tag=summonlev2,r=15] ~ ~ ~ summon minecraft:skeleton ~ ~ ~ {CustomName:"Level 2",CustomNameVisible:1,Health:20,HandItems:[{id:"minecraft:bow",Count:1},{}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1,tag:{display:{color:13580848}}}],Tags:["level2","monster"]}
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent841224] ~ ~ ~ execute @a ~ ~ ~ execute @e[tag=summonlev2,r=15] ~ ~ ~ summon minecraft:witch ~ ~ ~ {CustomName:"Level 2",CustomNameVisible:1,Health:20,Tags:["level2","monster"]}
kill @e[tag=randomEvent84122]
scoreboard players tag @a remove chosen84122

