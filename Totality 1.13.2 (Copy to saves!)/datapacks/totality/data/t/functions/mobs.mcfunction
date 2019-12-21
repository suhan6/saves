###########################
#                         #
# TOTALITY by Cold Fusion #
#                         #
#    mobs.mcfunction      #
#                         #
###########################

#################
# Mob Particles #
#################
execute at @e[name="Mechapod Prime"] run particle minecraft:flame ~ ~ ~ 0 0 0 0.05 1 normal
execute at @e[name="Reanimated Bones"] run particle minecraft:enchant ~ ~1.7 ~ 0 0 0 0.5 1 normal

################
#  Mob Sounds  #
################
execute at @e[name="Sol Corp Security",nbt={HurtTime:10s}] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 0.6 0.2 0
execute at @e[name="Lunatic Acolyte",nbt={HurtTime:10s}] run playsound minecraft:entity.enderman.hurt hostile @a ~ ~ ~ 0.6 0.5 0
execute at @e[name="Lunatic Priest",nbt={HurtTime:10s}] run playsound minecraft:entity.enderman.hurt hostile @a ~ ~ ~ 0.6 0.5 0
execute at @e[name="Reanimated Bones",nbt={HurtTime:10s}] run playsound minecraft:entity.skeleton.hurt hostile @a ~ ~ ~ 0.3 0.5 0
execute at @e[name="Rocket Scientist",nbt={HurtTime:10s}] run playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 1 0.8 0
execute at @e[name="Lingering Hatred",nbt={HurtTime:10s}] run playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 1 0.5 0
execute at @e[name="Bad Memories",nbt={HurtTime:10s}] run playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 1 0.5 0
execute at @e[name="Office Drone",nbt={HurtTime:10s}] run playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 1 0
execute at @e[name="Rusty Outlaw",nbt={HurtTime:10s}] run playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 1 0
execute at @e[name="Crumbling Golem",nbt={HurtTime:10s}] run playsound minecraft:entity.shulker.hurt hostile @a ~ ~ ~ 0.6 0.5 0

#################
# Mob Behaviors #
#################

# For mobs that have a special death effect, keep track of their health in a scoreboard value
execute as @e[tag=deathEffect] store result score @s mobHealth run data get entity @s Health 1

# Sol Corp Security head swap
scoreboard players add @e[name="Sol Corp Security"] siren 1
scoreboard players set @e[name="Sol Corp Security",scores={siren=20..}] siren 0
execute as @e[name="Sol Corp Security",scores={siren=1}] run data merge entity @s {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:8290424}}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8290424}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"48eede21-6c13-8071-f748-c18b597cb260",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTU3NDI0NzVlZTVhZDViZWYzOThiYjQxOTQzYTUxNWRjYWE3N2RjZDcyMjI4YjUxOWVmNjljM2FhODZjNCJ9fX0="}]}}}}]}
execute as @e[name="Sol Corp Security",scores={siren=11}] run data merge entity @s {ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:8290424}}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8290424}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"e36ca484-1fc5-b5cd-a751-5a589aca1d28",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzFlMDhkNTQ3Zjk5Mjk0OWYwMTNhMWUyYzdlM2NkMjI2YWI0ODVlM2JjOGMwYzBjMzljMTVkNWI3YzllODIwIn19fQ=="}]}}}}]}

# Boss talking head swap
scoreboard players add @e[name="Boss",scores={BOSS_TALKING=1}] siren 1
scoreboard players set @e[name="Boss",scores={siren=10..}] siren 0
execute as @e[name="Boss",scores={siren=1}] run data merge entity @s {ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"ad9de781-36c8-43c4-9599-5b9d0d37b60c",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzA0NGEzMzQ1NDQ0ZDk5NjcwYTJhYzgwY2JmOTQyZmY0ODY0ODAyZGVmOGM5YTM0NDliZDEwM2FiYWJjZDJlNyJ9fX0="}]}}}}]}
execute as @e[name="Boss",scores={siren=6}] run data merge entity @s {ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{id:"minecraft:golden_leggings",Count:1b},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"2fe86a61-51c2-46d0-85e8-891107d83493",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTk0MzViNDIwOTZmMjY2ZWZiYzdmMzY5NWM5M2RlOGUwYzg4ZTM1OTM2YjY0NTI4NTIyYjQ3YzNhYzliNDYyIn19fQ=="}]}}}}]}
#execute as @e[name="Boss",scores={siren=1}] run data merge entity @s {ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"b255f7d4-426c-4dda-80f7-1e5d77ef982b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2ExZTY5NGVkMzc0ZWZmYmU5YTY3ZjY4NmRmZjM1NmNkNTRjNzBiYThiODQ4YmM3NjkyODY2MzRkMTg2NjM5MyJ9fX0="}]}}}}]}
#execute as @e[name="Boss",scores={siren=6}] run data merge entity @s {ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{},{id:"minecraft:golden_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"58cc8d9f-66d9-4c96-bc6b-d597612e02b3",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDRlYTE3MmUxNGFkMTAyNmYyYjMzOTljYmNmYjg0YThmZWZhODRjNzhmODRlOGQ5YmJjNTM4MjdkOCJ9fX0="}]}}}}]}

# Lunatic teleportation
scoreboard players set @e[tag=Lunatic,nbt={HurtTime:10s}] vanishTime 30
scoreboard players remove @e[scores={vanishTime=1..30}] vanishTime 1
execute at @e[scores={vanishTime=29}] run summon minecraft:bat ~ ~ ~ {Silent:1,Invulnerable:1,Attributes:[{Name:generic.movementSpeed,Base:10}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:9999,ShowParticles:0b}]}
execute at @e[scores={vanishTime=29}] run particle minecraft:enchanted_hit ~ ~ ~ 0 1 0 0.4 20 force
execute as @e[scores={vanishTime=29}] at @s run data merge entity @s {NoAI:1,Invulnerable:1}
execute as @e[scores={vanishTime=28}] at @s run tp @s ~ ~50 ~
execute as @e[scores={vanishTime=10}] at @s run tp @s @e[type=bat,sort=nearest,limit=1]
execute as @e[scores={vanishTime=10}] at @s run tp @e[type=bat,sort=nearest,limit=1] ~ ~-1000 ~
execute as @e[scores={vanishTime=7..9}] at @s run data merge entity @s {NoAI:0}
execute as @e[scores={vanishTime=5}] at @s run data merge entity @s {Invulnerable:0}
execute at @e[scores={vanishTime=6..10}] run particle minecraft:enchanted_hit ~ ~ ~ 0 1 0 0.4 10 force
execute at @e[scores={vanishTime=5}] run playsound minecraft:entity.iron_golem.step hostile @a ~ ~ ~ 1 1 1
execute at @e[type=bat] run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0 1 force

# Explosive critic tnt drop
execute at @e[name="Explosive Critic",scores={mobHealth=..10}] run summon tnt ~ ~ ~ {Fuse:30s,Tags:["safe"]}
kill @e[name="Explosive Critic",scores={mobHealth=..10}]
execute at @e[type=minecraft:tnt,tag=safe,nbt={Fuse:1s}] run summon creeper ~ ~ ~ {Fuse:0,CustomName:"{\"text\":\"Explosive Critic\",\"color\":\"aqua\"}"}
kill @e[type=tnt,tag=safe,nbt={Fuse:1s}]
execute as @e[name="Explosive Critic",nbt={CustomNameVisible:1b}] run data merge entity @s {CustomNameVisible:0b}

# Lingering hatred glow toggle
execute as @e[name="Lingering Hatred"] at @s unless entity @a[distance=..20] run data merge entity @s {Glowing:0b}
execute as @e[name="Lingering Hatred"] at @s if entity @a[distance=..20] run data merge entity @s {Glowing:1b}

# Bad memories glow toggle
execute as @e[name="Bad Memories"] at @s unless entity @a[distance=..20] run data merge entity @s {Glowing:0b}
execute as @e[name="Bad Memories"] at @s if entity @a[distance=..20] run data merge entity @s {Glowing:1b}

# Rocket scientist firework
execute at @e[name="Rocket Scientist",scores={mobHealth=..10}] run summon firework_rocket ~ ~1 ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:2,Flicker:0,Trail:1,Colors:[I;11743532],FadeColors:[I;15790320]}]}}}}
kill @e[name="Rocket Scientist",scores={mobHealth=..10}]

# Crumbling golem silverfish
execute at @e[tag=Golem,nbt={HurtTime:10s}] run summon silverfish ~ ~ ~ {Health:1f,CustomName:"{\"text\":\"Synthetic Swarmer\",\"color\":\"aqua\"}",Attributes:[{Name:generic.maxHealth,Base:1},{Name:generic.movementSpeed,Base:0.17}]}
