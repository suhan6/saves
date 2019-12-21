####################################################################
# THIS FUNCTION WAS MADE BY QMAGNET
# JANUARY 12 2018 / MAY 2 2019
# GIVE MAP MAKERS THE CREDIT THEY DESERVE
# YOUTUBERS, TELL YOUR VIEWERS ABOUT OUR CHANNELS
# YouTube -> https://youtube.com/theqmagnet
# Twitter -> https://twitter.com/theqmagnet
####################################################################

#scoreboard objectives setdisplay sidebar Boss3Attack
#scoreboard objectives setdisplay sidebar Boss3Health

difficulty hard

execute if block 1 3 78 clay if block 1 5 78 clay unless entity @e[scores={Boss3Attack=0..250}] run scoreboard objectives remove Boss3Attack

execute if entity @e[scores={ArenaRound=3,ArenaTimer=2560..}] unless entity @e[scores={Boss3Attack=0..}] as @e[tag=ArenaBoss3,nbt={Invulnerable:1b}] run data merge entity @s {Invulnerable:0b}
execute if entity @e[scores={ArenaRound=3,ArenaTimer=2560..}] unless entity @e[scores={Boss3Attack=0..}] as @e[tag=ArenaBoss3,nbt={NoGravity:1b}] run data merge entity @s {NoGravity:0b}
execute if entity @e[scores={ArenaRound=3,ArenaTimer=2560..}] unless entity @e[scores={Boss3Attack=0..}] as @e[tag=ArenaBoss3,nbt={NoAI:1b}] run data merge entity @s {NoAI:0b}

execute if entity @e[tag=ArenaBoss3] run scoreboard objectives add Boss3Health dummy
execute if entity @e[tag=ArenaBoss3] store result score @e[tag=MainArenaAEC,limit=1] Boss3Health run data get entity @e[tag=ArenaBoss3,limit=1] Health




# ATTACK 1 -> BELOW 66
execute if entity @e[tag=ArenaBoss3] if entity @e[scores={Boss3Health=75..}] if block 1 3 78 gold_block run setblock 1 3 78 clay
execute if entity @e[tag=ArenaBoss3] unless entity @e[scores={Boss3Health=66..}] if block 1 3 78 clay run setblock 1 3 78 yellow_concrete
execute unless entity @e[scores={Boss3Health=66..}] if entity @e[scores={Boss3Attack=49}] run setblock 1 3 78 gold_block

# ATTACK 2 -> BELOW 33
execute if entity @e[tag=ArenaBoss3] if entity @e[scores={Boss3Health=50..}] if block 1 5 78 gold_block run setblock 1 5 78 clay
execute if entity @e[tag=ArenaBoss3] unless entity @e[scores={Boss3Health=33..}] if block 1 5 78 clay run setblock 1 5 78 yellow_concrete
execute unless entity @e[scores={Boss3Health=33..}] if entity @e[scores={Boss3Attack=49}] run setblock 1 5 78 gold_block


scoreboard players set @e[scores={Boss3Attack=2}] Boss3Attack 46
scoreboard players add @e[scores={Boss3Attack=0..49}] Boss3Attack 1
scoreboard players add @e[scores={Boss3Attack=51..149}] Boss3Attack 1
scoreboard players add @e[scores={Boss3Attack=200..299}] Boss3Attack 1

execute if block 1 3 78 yellow_concrete run scoreboard objectives add Boss3Attack dummy
execute if block 1 5 78 yellow_concrete run scoreboard objectives add Boss3Attack dummy
scoreboard players add @e[tag=MainArenaAEC] Boss3Attack 0


execute if entity @e[scores={Boss3Attack=1..49}] as @e[tag=ArenaBoss3] run data merge entity @s[nbt=!{NoAI:1b}] {Invulnerable:1b,NoAI:1b}
execute if entity @e[scores={Boss3Attack=1..175}] run effect clear @e[tag=ArenaBoss3] invisibility
execute if entity @e[scores={Boss3Attack=1..175}] run effect give @e[tag=ArenaBoss3] glowing 1 1 true
execute if entity @e[scores={Boss3Attack=1..200}] at @e[tag=ArenaBoss3] run particle cloud ~ ~ ~ 0.2 0.1 0.2 0 1 force
execute if entity @e[scores={Boss3Attack=50}] as @e[tag=ArenaBoss3] at @s run teleport @s ^ ^ ^0.3 facing 0 69 2000

execute align x align y align z if entity @e[tag=ArenaBoss3,x=0,y=69,z=2000,dx=0,dy=0,dz=0] run scoreboard players set @e[scores={Boss3Attack=50}] Boss3Attack 51
execute if entity @e[scores={Boss3Attack=51..149}] as @e[tag=ArenaBoss3] at @s run teleport @s 0 69 2000 ~45 0

execute if entity @e[scores={Boss3Attack=100}] at @e[tag=ArenaBoss3] run playsound entity.shulker.shoot hostile @a ~ ~ ~ 2 1 1
execute if entity @e[scores={Boss3Attack=100}] at @e[tag=ArenaBoss3] run summon endermite ~ ~ ~ {Motion:[0.3d,0.3d,0.0d],Attributes:[{Name:"generic.movementSpeed",Base:0.40},{Name:"generic.attackDamage",Base:2.70}],Invulnerable:1b,Tags:["ArenaMob","ArenaAlcoveMob","ArenaEndermite"]}
execute if entity @e[scores={Boss3Attack=100}] at @e[tag=ArenaBoss3] run summon endermite ~ ~ ~ {Motion:[-0.3d,0.3d,0.0d],Attributes:[{Name:"generic.movementSpeed",Base:0.40},{Name:"generic.attackDamage",Base:2.70}],Invulnerable:1b,Tags:["ArenaMob","ArenaAlcoveMob","ArenaEndermite"]}
execute if entity @e[scores={Boss3Attack=100}] at @e[tag=ArenaBoss3] run summon endermite ~ ~ ~ {Motion:[0.0d,0.3d,0.3d],Attributes:[{Name:"generic.movementSpeed",Base:0.40},{Name:"generic.attackDamage",Base:2.70}],Invulnerable:1b,Tags:["ArenaMob","ArenaAlcoveMob","ArenaEndermite"]}
execute if entity @e[scores={Boss3Attack=100}] at @e[tag=ArenaBoss3] run summon endermite ~ ~ ~ {Motion:[0.0d,0.3d,-0.3d],Attributes:[{Name:"generic.movementSpeed",Base:0.40},{Name:"generic.attackDamage",Base:2.70}],Invulnerable:1b,Tags:["ArenaMob","ArenaAlcoveMob","ArenaEndermite"]}

execute if entity @e[scores={Boss3Attack=120}] at @e[tag=ArenaBoss3] run playsound entity.shulker.shoot hostile @a ~ ~ ~ 2 1 1
execute if entity @e[scores={Boss3Attack=120}] at @e[tag=ArenaBoss3] run summon endermite ~ ~ ~ {Motion:[0.5d,0.4d,0.3d],Attributes:[{Name:"generic.movementSpeed",Base:0.40},{Name:"generic.attackDamage",Base:2.70}],Invulnerable:1b,Tags:["ArenaMob","ArenaAlcoveMob","ArenaEndermite"]}
execute if entity @e[scores={Boss3Attack=120}] at @e[tag=ArenaBoss3] run summon endermite ~ ~ ~ {Motion:[-0.5d,0.4d,0.3d],Attributes:[{Name:"generic.movementSpeed",Base:0.40},{Name:"generic.attackDamage",Base:2.70}],Invulnerable:1b,Tags:["ArenaMob","ArenaAlcoveMob","ArenaEndermite"]}
execute if entity @e[scores={Boss3Attack=120}] at @e[tag=ArenaBoss3] run summon endermite ~ ~ ~ {Motion:[0.3d,0.4d,0.5d],Attributes:[{Name:"generic.movementSpeed",Base:0.40},{Name:"generic.attackDamage",Base:2.70}],Invulnerable:1b,Tags:["ArenaMob","ArenaAlcoveMob","ArenaEndermite"]}
execute if entity @e[scores={Boss3Attack=120}] at @e[tag=ArenaBoss3] run summon endermite ~ ~ ~ {Motion:[0.3d,0.4d,-0.5d],Attributes:[{Name:"generic.movementSpeed",Base:0.40},{Name:"generic.attackDamage",Base:2.70}],Invulnerable:1b,Tags:["ArenaMob","ArenaAlcoveMob","ArenaEndermite"]}

execute if entity @e[scores={Boss3Attack=140}] at @e[tag=ArenaBoss3] run playsound entity.shulker.shoot hostile @a ~ ~ ~ 2 1 1
execute if entity @e[scores={Boss3Attack=140}] at @e[tag=ArenaBoss3] run summon endermite ~ ~ ~ {Motion:[0.7d,0.5d,0.2d],Attributes:[{Name:"generic.movementSpeed",Base:0.40},{Name:"generic.attackDamage",Base:2.70}],Invulnerable:1b,Tags:["ArenaMob","ArenaAlcoveMob","ArenaEndermite"]}
execute if entity @e[scores={Boss3Attack=140}] at @e[tag=ArenaBoss3] run summon endermite ~ ~ ~ {Motion:[-0.7d,0.5d,0.2d],Attributes:[{Name:"generic.movementSpeed",Base:0.40},{Name:"generic.attackDamage",Base:2.70}],Invulnerable:1b,Tags:["ArenaMob","ArenaAlcoveMob","ArenaEndermite"]}
execute if entity @e[scores={Boss3Attack=140}] at @e[tag=ArenaBoss3] run summon endermite ~ ~ ~ {Motion:[0.2d,0.5d,0.7d],Attributes:[{Name:"generic.movementSpeed",Base:0.40},{Name:"generic.attackDamage",Base:2.70}],Invulnerable:1b,Tags:["ArenaMob","ArenaAlcoveMob","ArenaEndermite"]}
execute if entity @e[scores={Boss3Attack=140}] at @e[tag=ArenaBoss3] run summon endermite ~ ~ ~ {Motion:[0.2d,0.5d,-0.7d],Attributes:[{Name:"generic.movementSpeed",Base:0.40},{Name:"generic.attackDamage",Base:2.70}],Invulnerable:1b,Tags:["ArenaMob","ArenaAlcoveMob","ArenaEndermite"]}

execute if entity @e[scores={Boss3Attack=150}] run teleport @e[tag=ArenaBoss3] 0 69 2000
execute if entity @e[scores={Boss3Attack=150}] as @e[tag=ArenaBoss3] run data merge entity @s[nbt={NoAI:1b}] {NoAI:0b,NoGravity:1b}
#execute if entity @e[scores={Boss3Attack=150}] at @s run teleport @s ^ ^ ^ facing entity @p

execute if entity @e[scores={Boss3Attack=150}] unless entity @e[tag=ArenaEndermite] run scoreboard players set @e[scores={Boss3Attack=150}] Boss3Attack 200

execute if entity @e[scores={Boss3Attack=202..}] as @e[tag=ArenaBoss3] run data merge entity @s[nbt={NoGravity:1b}] {NoGravity:0b}
execute if entity @e[scores={Boss3Attack=202}] run effect give @e[tag=ArenaBoss3] slow_falling 2 10 true
execute if entity @e[scores={Boss3Attack=225..}] as @e[tag=ArenaBoss3] run data merge entity @s[nbt={Invulnerable:1b}] {Invulnerable:0b}
execute if entity @e[scores={Boss3Attack=300..}] run scoreboard objectives remove Boss3Attack


execute as @e[tag=ArenaEndermite,nbt={OnGround:1b}] run data merge entity @s[nbt={Invulnerable:1b}] {Invulnerable:0b}



scoreboard players add @e[tag=MainArenaAEC,scores={Boss1Attack=0..}] Boss1Attack 1
scoreboard players set @e[tag=MainArenaAEC,scores={Boss1Attack=100..}] Boss1Attack 0

#execute if entity @e[tag=MainArenaAEC,scores={Boss1Attack=99}] at @e[tag=ArenaBoss1,type=ocelot] run summon area_effect_cloud ~ ~ ~ {Tags:["ArenaAEC","CatPeeAEC"],Duration:200}


effect give @e[tag=ArenaBoss3] resistance 1 2 true

# HEALTH REGEN
scoreboard objectives add ArenaBoss3Regen deathCount
execute if entity @a[scores={ArenaBoss3Regen=1..}] run effect give @e[tag=ArenaBoss3] regeneration 1 5 false
scoreboard players reset @a[scores={ArenaBoss3Regen=1..}] ArenaBoss3Regen