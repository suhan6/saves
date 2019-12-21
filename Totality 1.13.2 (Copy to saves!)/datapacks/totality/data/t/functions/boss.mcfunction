###########################
#                         #
# TOTALITY by Cold Fusion #
#                         #
#    boss.mcfunction      #
#                         #
###########################

# Boss particles
particle minecraft:flame ~ ~0.1 ~ 0 0 0 0.01 1 normal
execute if entity @s[nbt={HurtTime:10s}] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 5 normal

# Boss sound effects
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:entity.vindicator.hurt hostile @a ~ ~ ~ 1 0.5 0

# Bossbar update
execute if entity @s store result bossbar totality:boss value run data get entity @s Health

# Boss Modes & Timers
scoreboard players add @s BOSS_TIME 0
scoreboard players add @s BOSS_MODE 0
scoreboard players add @s BOSS_PHASE 0
scoreboard players remove @s[scores={BOSS_TIME=1..}] BOSS_TIME 1
scoreboard players add @s[scores={BOSS_TIME=0}] BOSS_MODE 1
scoreboard players set @s[scores={BOSS_MODE=4..}] BOSS_MODE 0
execute if entity @s[scores={BOSS_TIME=0}] run tag @s remove Lunatic
execute if entity @s[scores={BOSS_TIME=0}] run tag @s remove Golem
execute if entity @s[scores={BOSS_TIME=0}] run tag @s add deathEffect
execute if entity @s[scores={BOSS_TIME=0}] run kill @e[tag=bossTurret]
execute if entity @s[scores={BOSS_TIME=0}] run kill @e[tag=bossFlee]
execute if entity @s[scores={BOSS_TIME=0}] run kill @e[tag=bossSpook]

# Boss components
tp @e[tag=bossTurret] ~ ~2 ~
execute at @e[tag=bossFlee,limit=1] run tp @e[name="Boss",type=drowned] ~ ~ ~
execute at @r run tp @e[tag=bossSpook] ~ ~2 ~

# Boss Mode 0: Melee
execute if entity @s[scores={BOSS_MODE=0,BOSS_TIME=0}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.3},{Name:generic.knockbackResistance,Base:1}],HandItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:"{\"text\":\"The Power of Friendship\",\"color\":\"aqua\"}"},Enchantments:[{id:"minecraft:fire_aspect",lvl:1}]}},{}]}

# Boss Mode 1: Ranged
execute if entity @s[scores={BOSS_MODE=1,BOSS_TIME=0}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.2},{Name:generic.knockbackResistance,Base:0}],HandItems:[{id:"minecraft:trident",Count:1b,tag:{display:{Name:"{\"text\":\"Guilt Trips\",\"color\":\"aqua\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}
tag @s[scores={BOSS_PHASE=0,BOSS_MODE=1,BOSS_TIME=0}] add Lunatic

# Boss Mode 2: Summon
execute if entity @s[scores={BOSS_MODE=2,BOSS_TIME=0}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.1},{Name:generic.knockbackResistance,Base:0}],HandItems:[{id:"minecraft:spawner",Count:1b},{id:"minecraft:redstone_torch",Count:1b}]}
execute if entity @s[scores={BOSS_MODE=2,BOSS_TIME=0}] run summon evoker ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["bossTurret"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:99999,ShowParticles:0b}]}
tag @s[scores={BOSS_MODE=2,BOSS_TIME=0}] add Golem

# Boss Mode 3: Flee
execute if entity @s[scores={BOSS_MODE=3,BOSS_TIME=0}] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.1},{Name:generic.knockbackResistance,Base:0}],HandItems:[{id:"minecraft:book",Count:1b},{id:"minecraft:fire_charge",Count:1b}]}
execute if entity @s[scores={BOSS_MODE=3,BOSS_TIME=0}] run summon blaze ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["bossTurret"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:99999,ShowParticles:0b}]}
execute if entity @s[scores={BOSS_PHASE=0,BOSS_MODE=3,BOSS_TIME=0}] run summon creeper ~ ~ ~ {Silent:1b,Invulnerable:1b,Fuse:9999,Tags:["bossFlee"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:99999,ShowParticles:0b}]}
execute if entity @s[scores={BOSS_PHASE=0,BOSS_MODE=3,BOSS_TIME=0}] run summon ocelot ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["bossSpook"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:99999,ShowParticles:0b}]}

scoreboard players set @s[scores={BOSS_TIME=0}] BOSS_TIME 256

# Boss vex replacement
execute at @e[type=vex] run summon spider ~ ~ ~ {Health:7f,CustomName:"{\"text\":\"Mechapod\",\"color\":\"aqua\"}",Attributes:[{Name:generic.maxHealth,Base:7}]}
execute at @e[type=vex] run particle poof ~ ~ ~ 0 0 0 0.1 10 normal
tp @e[type=vex] ~ ~-1000 ~

# Boss phase 2 setup
execute if entity @s[scores={BOSS_PHASE=0,mobHealth=..100}] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.3 40 normal
execute if entity @s[scores={BOSS_PHASE=0,mobHealth=..100}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1 0
execute if entity @s[scores={BOSS_PHASE=0,mobHealth=..100}] run kill @e[tag=bossFlee]
execute if entity @s[scores={BOSS_PHASE=0,mobHealth=..100}] run tellraw @a {"text":"**Initiating Phase 2**","color":"gold"}
execute if entity @s[scores={BOSS_PHASE=0,mobHealth=..100}] run clone 15 207 15 35 216 35 15 77 15
execute if entity @s[scores={BOSS_PHASE=0,mobHealth=..100}] at @s run tp @s 27 84 27
execute if entity @s[scores={BOSS_PHASE=0,mobHealth=..100}] run particle minecraft:totem_of_undying ~ ~1 ~ 5 5 5 0.3 40 normal
execute if entity @s[scores={BOSS_PHASE=0,mobHealth=..100}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1 1
scoreboard players set @s[scores={BOSS_PHASE=0,mobHealth=..100}] BOSS_PHASE 1

# Boss phase 3 setup
execute if entity @s[scores={BOSS_PHASE=1,mobHealth=..80}] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.3 40 normal
execute if entity @s[scores={BOSS_PHASE=1,mobHealth=..80}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1 0
execute if entity @s[scores={BOSS_PHASE=1,mobHealth=..80}] run kill @e[tag=bossFlee]
execute if entity @s[scores={BOSS_PHASE=1,mobHealth=..80}] run clone -19 207 15 1 216 35 -19 77 15
execute if entity @s[scores={BOSS_PHASE=1,mobHealth=..80}] at @s run tp @s -11 84 27
execute if entity @s[scores={BOSS_PHASE=1,mobHealth=..80}] run particle minecraft:totem_of_undying ~ ~1 ~ 5 5 5 0.3 40 normal
execute if entity @s[scores={BOSS_PHASE=1,mobHealth=..80}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1 1
scoreboard players set @s[scores={BOSS_PHASE=1,mobHealth=..80}] BOSS_PHASE 2

# Boss phase 4 setup
execute if entity @s[scores={BOSS_PHASE=2,mobHealth=..60}] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.3 40 normal
execute if entity @s[scores={BOSS_PHASE=2,mobHealth=..60}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1 0
execute if entity @s[scores={BOSS_PHASE=2,mobHealth=..60}] run kill @e[tag=bossFlee]
execute if entity @s[scores={BOSS_PHASE=2,mobHealth=..60}] run clone -19 207 -19 1 216 1 -19 77 -19
execute if entity @s[scores={BOSS_PHASE=2,mobHealth=..60}] at @s run tp @s -11 84 -11
execute if entity @s[scores={BOSS_PHASE=2,mobHealth=..60}] run particle minecraft:totem_of_undying ~ ~1 ~ 5 5 5 0.3 40 normal
execute if entity @s[scores={BOSS_PHASE=2,mobHealth=..60}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1 1
scoreboard players set @s[scores={BOSS_PHASE=2,mobHealth=..60}] BOSS_PHASE 3

# Boss phase 5 setup
execute if entity @s[scores={BOSS_PHASE=3,mobHealth=..40}] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.3 40 normal
execute if entity @s[scores={BOSS_PHASE=3,mobHealth=..40}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1 0
execute if entity @s[scores={BOSS_PHASE=3,mobHealth=..40}] run kill @e[tag=bossFlee]
execute if entity @s[scores={BOSS_PHASE=3,mobHealth=..40}] run clone 15 207 -19 35 216 1 15 77 -19
execute if entity @s[scores={BOSS_PHASE=3,mobHealth=..40}] at @s run tp @s 27 84 -11
execute if entity @s[scores={BOSS_PHASE=3,mobHealth=..40}] run particle minecraft:totem_of_undying ~ ~1 ~ 5 5 5 0.3 40 normal
execute if entity @s[scores={BOSS_PHASE=3,mobHealth=..40}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1 1
scoreboard players set @s[scores={BOSS_PHASE=3,mobHealth=..40}] BOSS_PHASE 4

# Freeze the boss during phases 2-5
effect give @s[scores={BOSS_PHASE=1..4}] minecraft:slowness 1 10 true

# Boss death
execute if entity @s[scores={mobHealth=..20}] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 100 normal
execute if entity @s[scores={mobHealth=..20}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1 1 1
execute if entity @s[scores={mobHealth=..20}] run kill @e[tag=bossTurret]
execute if entity @s[scores={mobHealth=..20}] run kill @e[tag=bossFlee]
execute if entity @s[scores={mobHealth=..20}] run kill @e[tag=bossSpook]
execute if entity @s[scores={mobHealth=..20}] run kill @e[type=silverfish]
execute if entity @s[scores={mobHealth=..20}] run kill @e[type=spider]
execute if entity @s[scores={mobHealth=..20}] run tp @s ~ ~-1000 ~
execute if entity @s[scores={mobHealth=..20}] run kill @s