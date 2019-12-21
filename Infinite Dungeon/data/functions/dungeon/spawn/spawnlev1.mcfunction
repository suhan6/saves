scoreboard players tag @r add chosen84122
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841221"]}
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841222"]}
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841222"]}
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841223"]}
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841223"]}
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841224"]}
execute @a[tag=chosen84122] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Tags:["randomEvent84122","randomEvent841224"]}
scoreboard players tag @r[type=area_effect_cloud,tag=randomEvent84122] add chosenToExecute
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent841221] ~ ~ ~ execute @a ~ ~ ~ execute @e[tag=summonlev1,r=15] ~ ~ ~ summon minecraft:slime ~ ~ ~ {Size:1,CustomName:"Level 1",CustomNameVisible:1,Health:8,Tags:["level1","monster"]}
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent841222] ~ ~ ~ execute @a ~ ~ ~ execute @e[tag=summonlev1,r=15] ~ ~ ~ summon minecraft:skeleton ~ ~ ~ {CustomName:"Level 1",CustomNameVisible:1,Health:8,HandItems:[{id:"minecraft:bow",Count:1},{}],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1,tag:{display:{color:5677093}}}],Tags:["level1","monster"]}
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent841223] ~ ~ ~ execute @a ~ ~ ~ execute @e[tag=summonlev1,r=15] ~ ~ ~ summon minecraft:zombie ~ ~ ~ {CustomName:"Level 1",CustomNameVisible:1,Health:8,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1,tag:{display:{color:5677093}}}],Tags:["level1","monster"]}
execute @e[tag=chosenToExecute] ~ ~ ~ execute @s[tag=randomEvent841224] ~ ~ ~ execute @a ~ ~ ~ execute @e[tag=summonlev1,r=15] ~ ~ ~ summon minecraft:spider ~ ~ ~ {CustomName:"Level 1",CustomNameVisible:1,Health:8,Tags:["level1","monster"]}
kill @e[tag=randomEvent84122]
scoreboard players tag @a remove chosen84122

