###########################
#                         #
# TOTALITY by Cold Fusion #
#                         #
#    world.mcfunction     #
#                         #
###########################

###########################
# Run controller commands #
###########################

execute as @e[name="Boss",type=armor_stand] at @s run function t:controller

#####################
# Run boss commands #
#####################

# Execute boss checks if the boss exists
execute as @e[name="Boss",type=minecraft:drowned] at @s run function t:boss

#########################################
# Force spawn players at the right spot #
#########################################

scoreboard players add @a PLAYER_SPAWNED 0
tp @a[scores={PLAYER_SPAWNED=0}] 8 203 84 180 0
spawnpoint @a[scores={PLAYER_SPAWNED=0}] 8 203 84
scoreboard players set @a[scores={PLAYER_SPAWNED=0}] PLAYER_SPAWNED 1

#################
# Kill phantoms #
#################

kill @e[type=phantom]

############
# Map tips #
############

# If the player just died, give them a tip
execute as @a[scores={DEATHS_LAST=0,C_DEATHS=1}] unless entity @s[x=7,y=37,z=-101,dx=21,dy=23,dz=90] run tellraw @s [{"text":"Tip: Every time you die you will earn a new tip. Or you can ","color":"aqua"},{"text":"open the chat and click here to disable tips","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/scoreboard players set @s DEATHS_LAST 20000"}}]
execute as @a[scores={DEATHS_LAST=1,C_DEATHS=2}] unless entity @s[x=7,y=37,z=-101,dx=21,dy=23,dz=90] run tellraw @s [{"text":"Tip: There are a lot of enemies in this map, but none of them can break holoblocks. Build walls and bridges to outmaneuver your foes! ","color":"aqua"},{"text":"Open the chat and click here to disable future tips","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/scoreboard players set @s DEATHS_LAST 20000"}}]
execute as @a[scores={DEATHS_LAST=2,C_DEATHS=3}] unless entity @s[x=7,y=37,z=-101,dx=21,dy=23,dz=90] run tellraw @s [{"text":"Tip: Your holoblock can also be used as a weapon! It deals 4 damage -- as much as a wooden sword! ","color":"aqua"},{"text":"Open the chat and click here to disable future tips","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/scoreboard players set @s DEATHS_LAST 20000"}}]
execute as @a[scores={DEATHS_LAST=3,C_DEATHS=4}] unless entity @s[x=7,y=37,z=-101,dx=21,dy=23,dz=90] run tellraw @s [{"text":"Tip: Most spawners can be disabled with light. Surround them with torches to shut them down! ","color":"aqua"},{"text":"Open the chat and click here to disable future tips","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/scoreboard players set @s DEATHS_LAST 20000"}}]
execute as @a[scores={DEATHS_LAST=4,C_DEATHS=5}] unless entity @s[x=7,y=37,z=-101,dx=21,dy=23,dz=90] run tellraw @s [{"text":"Tip: Most melee mobs can't reach you if you build up a few blocks. If you're being swarmed, pillar up! ","color":"aqua"},{"text":"Open the chat and click here to disable future tips","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/scoreboard players set @s DEATHS_LAST 20000"}}]
execute as @a[scores={DEATHS_LAST=5,C_DEATHS=6}] unless entity @s[x=7,y=37,z=-101,dx=21,dy=23,dz=90] run tellraw @s [{"text":"Tip: Stuck on a dungeon that's too hard? Retreat and explore someplace else! You might find a weapon that can help you advance. ","color":"aqua"},{"text":"Open the chat and click here to disable future tips","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/scoreboard players set @s DEATHS_LAST 20000"}}]
execute as @a[scores={DEATHS_LAST=6,C_DEATHS=7}] unless entity @s[x=7,y=37,z=-101,dx=21,dy=23,dz=90] run tellraw @s [{"text":"Tip: Spiders can't slip through gaps that are 1 block wide. Use your holoblock to build pillars and trap them! ","color":"aqua"},{"text":"Open the chat and click here to disable future tips","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/scoreboard players set @s DEATHS_LAST 20000"}}]
execute as @a[scores={DEATHS_LAST=7,C_DEATHS=8}] unless entity @s[x=7,y=37,z=-101,dx=21,dy=23,dz=90] run tellraw @s [{"text":"Tip: Right click on your taterPad to open the shop. You can buy powerful items with Sol Credits. ","color":"aqua"},{"text":"Open the chat and click here to disable future tips","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/scoreboard players set @s DEATHS_LAST 20000"}}]
execute as @a[scores={DEATHS_LAST=8,C_DEATHS=9}] unless entity @s[x=7,y=37,z=-101,dx=21,dy=23,dz=90] run tellraw @s [{"text":"Tip: Check every nook and cranny for hidden secrets. Powerful gear can be found in unexpected places... ","color":"aqua"},{"text":"Open the chat and click here to disable future tips","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/scoreboard players set @s DEATHS_LAST 20000"}}]
execute as @a[scores={DEATHS_LAST=9,C_DEATHS=10}] unless entity @s[x=7,y=37,z=-101,dx=21,dy=23,dz=90] run tellraw @s [{"text":"Tip: Having a difficult time? Feel free to switch to easy difficulty, or even peaceful! ","color":"aqua"},{"text":"Open the chat and click here to disable future tips","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/scoreboard players set @s DEATHS_LAST 20000"}}]
execute as @a[scores={DEATHS_LAST=10,C_DEATHS=11}] unless entity @s[x=7,y=37,z=-101,dx=21,dy=23,dz=90] run tellraw @s [{"text":"Last Tip: Don't feel bad about dying a lot! Just keep making progress with each life until you've found all four power sources!","color":"aqua"},{"text":"","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/scoreboard players set @s DEATHS_LAST 20000"}}]
execute as @a[scores={DEATHS_LAST=20000}] run tellraw @s [{"text":"Tips are now disabled. ","color":"aqua"},{"text":"Click here to enable tips","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/scoreboard players set @s DEATHS_LAST 10000"}}]
execute as @a[scores={DEATHS_LAST=20000}] run scoreboard players set @s DEATHS_LAST 20001
execute as @a[scores={DEATHS_LAST=10000}] run tellraw @s [{"text":"Tips are now enabled. ","color":"aqua"},{"text":"Click here to disable tips","color":"aqua","underlined":"true","clickEvent":{"action":"run_command","value":"/scoreboard players set @s DEATHS_LAST 20000"}}]
execute as @a[scores={DEATHS_LAST=..20000}] run scoreboard players operation @s DEATHS_LAST = @s C_DEATHS

#####################
# Intro rocket door #
#####################

execute if entity @a[x=10,y=205,z=91,dx=1,dy=2,dz=2] unless block 9 206 92 iron_door[open=false,facing=south] run playsound minecraft:block.iron_door.open master @a ~ ~ ~ 1 1 0
execute unless entity @a[x=10,y=205,z=91,dx=1,dy=2,dz=2] unless block 9 206 92 iron_door[open=true,facing=south] run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 1 1 0
execute if entity @a[x=10,y=205,z=91,dx=1,dy=2,dz=2] unless block 9 206 92 iron_door[open=false,facing=south] run setblock 9 206 92 iron_door[open=false,facing=south]
execute unless entity @a[x=10,y=205,z=91,dx=1,dy=2,dz=2] unless block 9 206 92 iron_door[open=true,facing=south] run setblock 9 206 92 iron_door[open=true,facing=south]
execute if entity @a[x=10,y=205,z=91,dx=1,dy=2,dz=2] unless block 9 207 92 iron_door[open=false,facing=south,half=upper] run setblock 9 207 92 iron_door[open=false,facing=south,half=upper]
execute unless entity @a[x=10,y=205,z=91,dx=1,dy=2,dz=2] unless block 9 207 92 iron_door[open=true,facing=south,half=upper] run setblock 9 207 92 iron_door[open=true,facing=south,half=upper]

###################
# Player spawning #
###################

gamemode adventure @a[name=!ColdFusionGaming,x=1,y=204,z=82,dx=20,dy=20,dz=20]
scoreboard players add @a C_HELMET_USED 0
scoreboard players add @a C_CHEST_USED 0
scoreboard players add @a C_LEGGINGS_USED 0
scoreboard players add @a C_BOOTS_USED 0
scoreboard players add @a C_DOG_USED 0
scoreboard players add @a C_SWORD_USED 0
scoreboard players add @a C_PICK_USED 0
scoreboard players add @a C_SHIELD_USED 0
scoreboard players add @a C_BOW_USED 0
scoreboard players add @a C_WATER_USED 0
scoreboard players add @a C_AXE_USED 0
scoreboard players add @a C_SHOVEL_USED 0
scoreboard players add @a C_SHEARS_USED 0
scoreboard players add @a C_TRIDENT_USED 0
scoreboard players add @a C_FIRE_USED 0
scoreboard players add @a C_HELMET_GET 0
scoreboard players add @a C_CHEST_GET 0
scoreboard players add @a C_LEGGINGS_GET 0
scoreboard players add @a C_BOOTS_GET 0
scoreboard players add @a C_DOG_GET 0
scoreboard players add @a C_SWORD_GET 0
scoreboard players add @a C_PICK_GET 0
scoreboard players add @a C_SHIELD_GET 0
scoreboard players add @a C_BOW_GET 0
scoreboard players add @a C_WATER_GET 0
scoreboard players add @a C_AXE_GET 0
scoreboard players add @a C_SHOVEL_GET 0
scoreboard players add @a C_SHEARS_GET 0
scoreboard players add @a C_TRIDENT_GET 0
scoreboard players add @a C_GLASS_GET 0
scoreboard players add @a C_FIRE_GET 0
scoreboard players add @a C_DEATHS 0
scoreboard players add @a DEATHS_LAST 0
scoreboard players add @a TUTSTAGE 0
spawnpoint @a[x=8,y=206,z=92,dx=0,dy=0,dz=0] 8 80 128
#tp @a[x=8,y=206,z=92,dx=0,dy=0,dz=0] 8 80 128 0 0

################
# Advancements #
################

advancement grant @a[x=8,y=80,z=128,dx=0,dy=0,dz=0] only t:announce/root
advancement grant @a[x=8,y=80,z=128,dx=0,dy=0,dz=0] only t:announce/announce
advancement grant @a[x=8,y=80,z=128,dx=0,dy=0,dz=0] only t:completion/root
advancement grant @a[x=8,y=80,z=128,dx=0,dy=0,dz=0] only t:challenges/root

##############
# Saturation #
##############

# Give player saturation when their food bar goes down
effect give @a[scores={FOOD=..19}] saturation 1 0 true

###################
# NPC Name Toggle #
###################

# Hide the name if the name is shown and there is no player in range
execute as @e[type=minecraft:armor_stand,tag=shown] at @s unless entity @a[distance=..10] run data merge entity @s {CustomNameVisible:0b}
execute as @e[type=minecraft:armor_stand,tag=shown] at @s unless entity @a[distance=..10] run tag @s remove shown

# Show the name if the name is not shown and there is a player in range
execute as @e[type=minecraft:armor_stand,tag=!shown] at @s unless entity @s[tag=hidename] if entity @a[distance=..10] run playsound minecraft:entity.enderman.ambient master @a ~ ~ ~ 0.5 1 0
execute as @e[type=minecraft:armor_stand,tag=!shown] at @s unless entity @s[tag=hidename] if entity @a[distance=..10] run data merge entity @s {CustomNameVisible:1b}
execute as @e[type=minecraft:armor_stand,tag=!shown] at @s unless entity @s[tag=hidename] if entity @a[distance=..10] run tag @s add shown

##############
# Center box #
##############

# Place a new holoblock in the box, but only if the box is empty
execute if blocks 8 77 8 8 77 8 8 76 8 all run data merge block 8 77 8 {Items:[{Slot:22b,id:"minecraft:written_book",Count:1b,tag:{display:{Name:"{\"text\":\"taterPad Air\",\"color\":\"gold\",\"italic\":\"false\"}",Lore:["§7Sol Corp Prime membership included","§7Free, instantaneous drone delivery!"]},title:"taterPad Air",author:"",pages:["[{\"text\":\"\"},{\"text\":\"Solar Flare (x8)\",\"color\":\"blue\",\"underlined\":\"true\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"Emits light when placed\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @p PURCHASE_ITEM 1\"}},{\"text\":\"\\nCost: 4 Credits\"},{\"text\":\"\\n\\nAqua Grenade (x4)\",\"color\":\"blue\",\"underlined\":\"true\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"An explosive ranged weapon\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @p PURCHASE_ITEM 2\"}},{\"text\":\"\\nCost: 8 Credits\"},{\"text\":\"\\n\\nCage Buster (x1)\",\"color\":\"blue\",\"underlined\":\"true\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"Can break up to 9 spawners\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @p PURCHASE_ITEM 3\"}},{\"text\":\"\\nCost: 24 Credits\"},{\"text\":\"\\n\\nFruit of the Gods (x1)\",\"color\":\"blue\",\"underlined\":\"true\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"Restores some health\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @p PURCHASE_ITEM 4\"}},{\"text\":\"\\nCost: 4 Credits\"},{\"text\":\"\\n\\nEnergy Saber (x1)\",\"color\":\"blue\",\"underlined\":\"true\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"A shockingly powerful (but fragile) blade\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @p PURCHASE_ITEM 5\"}},{\"text\":\"\\nCost: 24 Credits\"}]"]}},{Slot:13b,id:"minecraft:glass",Count:1b,tag:{display:{Name:"{\"text\":\"§dInfinite Holoblock\"}",Lore:["§f4 Damage","","§7Right click to place holographic walls","§7Left click to break holographic walls","§7Can also be used as a basic weapon"]},Enchantments:[{id:"minecraft:infinity",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"Damage",Slot:"mainhand",Amount:4,Operation:0,UUIDMost:42700,UUIDLeast:168669}],CanDestroy:["minecraft:wall_torch","minecraft:glass","minecraft:torch"],CanPlaceOn:["spawner","quartz_block","acacia_bark","acacia_door","acacia_fence","acacia_leaves","acacia_log","acacia_planks","acacia_sapling","acacia_slab","acacia_stairs","activator_rail","allium","andesite","anvil","azure_bluet","banner","barrier","beacon","white_bed","orange_bed","magenta_bed","light_blue_bed","yellow_bed","lime_bed","pink_bed","gray_bed","light_gray_bed","cyan_bed","purple_bed","blue_bed","brown_bed","green_bed","red_bed","black_bed","bedrock","beetroots","birch_bark","birch_door","birch_fence","birch_fence_gate","birch_leaves","birch_log","birch_planks","birch_sapling","birch_slab","birch_stairs","black_carpet","black_concrete","black_concrete_powder","black_glazed_terracotta","black_shulker_box","black_stained_glass","black_stained_glass_pane","black_terracotta","black_wool","blue_carpet","blue_concrete","blue_concrete_powder","blue_glazed_terracotta","blue_orchid","blue_shulker_box","blue_stained_glass","blue_stained_glass_pane","blue_terracotta","blue_wool","bone_block","bookshelf","brewing_stand","brick_slab","brick_stairs","bricks","brown_carpet","brown_concrete","brown_concrete_powder","brown_glazed_terracotta","brown_mushroom","brown_mushroom_block","brown_shulker_box","brown_stained_glass","brown_stained_glass_pane","brown_terracotta","brown_wool","cactus","cake","carrots","cauldron","chain_command_block","chest","chipped_anvil","chiseled_quartz","chiseled_red_sandstone","chiseled_sandstone","chiseled_stone_bricks","chorus_flower","chorus_plant","clay","coal_block","coal_ore","coarse_dirt","cobblestone","cobblestone_slab","cobblestone_stairs","cobblestone_wall","cobweb","cocoa","command_block","comparator","cracked_stone_bricks","crafting_table","creeper_head","cut_red_sandstone","cut_sandstone","cyan_carpet","cyan_concrete","cyan_concrete_powder","cyan_glazed_terracotta","cyan_shulker_box","cyan_stained_glass","cyan_stained_glass_pane","cyan_terracotta","cyan_wool","damaged_anvil","dandelion","dark_oak_bark","dark_oak_door","dark_oak_fence","dark_oak_fence_gate","dark_oak_leaves","dark_oak_log","dark_oak_planks","dark_oak_sapling","dark_oak_slab","dark_oak_stairs","dark_prismarine","daylight_detector","dead_bush","detector_rail","diamond_block","diamond_ore","diorite","dirt","dispenser","dragon_egg","dragon_head","dropper","emerald_block","emerald_ore","enchanting_table","end_gateway","end_portal","end_portal_frame","end_rod","end_stone","end_stone_bricks","ender_chest","farmland","fern","fire","flower_pot","flowing_lava","flowing_water","frosted_ice","furnace","glass","glass_pane","glowstone","gold_block","gold_ore","granite","grass","grass_block","grass_path","gravel","gray_carpet","gray_concrete","gray_concrete_powder","gray_glazed_terracotta","gray_shulker_box","gray_stained_glass","gray_stained_glass_pane","gray_terracotta","gray_wool","green_carpet","green_concrete","green_concrete_powder","green_glazed_terracotta","green_shulker_box","green_stained_glass","green_stained_glass_pane","green_terracotta","green_wool","hay_bale","heavy_weighted_pressure_plate","hopper","ice","infested_chiseled_stone_bricks","infested_cobblestone","infested_cracked_stone_bricks","infested_mossy_stone_bricks","infested_stone","infested_stone_bricks","iron_bars","iron_block","iron_door","iron_ore","iron_trapdoor","jack_o_lantern","jukebox","jungle_bark","jungle_door","jungle_fence","jungle_fence_gate","jungle_leaves","jungle_log","jungle_planks","jungle_sapling","jungle_slab","jungle_stairs","ladder","lapis_block","lapis_ore","large_fern","lava","lever","light_blue_carpet","light_blue_concrete","light_blue_concrete_powder","light_blue_glazed_terracotta","light_blue_shulker_box","light_blue_stained_glass","light_blue_stained_glass_pane","light_blue_terracotta","light_blue_wool","light_gray_carpet","light_gray_concrete","light_gray_concrete_powder","light_gray_glazed_terracotta","light_gray_shulker_box","light_gray_stained_glass","light_gray_stained_glass_pane","light_gray_terracotta","light_gray_wool","light_weighted_pressure_plate","lilac","lily_pad","lime_carpet","lime_concrete","lime_concrete_powder","lime_glazed_terracotta","lime_shulker_box","lime_stained_glass","lime_stained_glass_pane","lime_terracotta","lime_wool","magenta_carpet","magenta_concrete","magenta_concrete_powder","magenta_glazed_terracotta","magenta_shulker_box","magenta_stained_glass","magenta_stained_glass_pane","magenta_terracotta","magenta_wool","magma_block","melon_block","melon_plant","melon_stem","mob_spawner","mossy_cobblestone","mossy_cobblestone_wall","mossy_stone_bricks","mycelium","nether_brick_fence","nether_brick_slab","nether_brick_stairs","nether_bricks","nether_portal","nether_quartz_ore","nether_wart","nether_wart_block","netherrack","note_block","oak_bark","oak_door","oak_fence","oak_fence_gate","oak_leaves","oak_log","oak_planks","oak_sapling","oak_slab","oak_stairs","observer","obsidian","orange_carpet","orange_concrete","orange_concrete_powder","orange_glazed_terracotta","orange_shulker_box","orange_stained_glass","orange_stained_glass_pane","orange_terracotta","orange_tulip","orange_wool","oxeye_daisy","packed_ice","peony","petrified_oak_slab","pink_carpet","pink_concrete","pink_concrete_powder","pink_glazed_terracotta","pink_shulker_box","pink_stained_glass","pink_stained_glass_pane","pink_terracotta","pink_tulip","pink_wool","piston","piston_head","player_head","podzol","polished_andesite","polished_diorite","polished_granite","poppy","potatoes","powered_rail","prismarine","prismarine_bricks","carved_pumpkin","pumpkin_stem","purple_carpet","purple_concrete","purple_concrete_powder","purple_glazed_terracotta","purple_shulker_box","purple_stained_glass","purple_stained_glass_pane","purple_terracotta","purple_wool","purpur_block","purpur_pillar","purpur_slab","purpur_stairs","smooth_quartz","quartz_pillar","quartz_slab","quartz_stairs","rail","red_carpet","red_concrete","red_concrete_powder","red_glazed_terracotta","red_mushroom","red_mushroom_block","red_nether_bricks","red_sand","red_sandstone","red_sandstone_slab","red_sandstone_stairs","red_shulker_box","red_stained_glass","red_stained_glass_pane","red_terracotta","red_tulip","red_wool","redstone_block","redstone_lamp","redstone_ore","redstone_torch","redstone_wire","repeater","repeating_command_block","rose_bush","sand","sandstone","sandstone_slab","sandstone_stairs","sea_lantern","sign","skeleton_skull","slime_block","smooth_red_sandstone","smooth_sandstone","smooth_stone","snow","snow_block","soul_sand","sponge","spruce_bark","spruce_door","spruce_fence","spruce_fence_gate","spruce_leaves","spruce_log","spruce_planks","spruce_sapling","spruce_slab","spruce_stairs","sticky_piston","stone","stone_brick_slab","stone_brick_stairs","stone_bricks","stone_button","stone_pressure_plate","stone_slab","structure_block","structure_void","sugar_cane","sunflower","tall_grass","terracotta","tnt","torch","trapped_chest","tripwire","tripwire_hook","vine","wall_sign","wall_torch","water","wet_sponge","wheat","white_carpet","white_concrete","white_concrete_powder","white_glazed_terracotta","white_shulker_box","white_stained_glass","white_stained_glass_pane","white_terracotta","white_tulip","white_wool","wither_skeleton_skull","oak_button","spruce_button","acacia_button","birch_button","dark_oak_button","jungle_button","oak_trapdoor","spruce_trapdoor","acacia_trapdoor","dark_oak_trapdoor","birch_trapdoor","jungle_trapdoor","yellow_carpet","yellow_concrete","yellow_concrete_powder","yellow_glazed_terracotta","yellow_shulker_box","yellow_stained_glass","yellow_stained_glass_pane","yellow_terracotta","yellow_wool","zombie_head","redstone_wall_torch","dark_oak_pressure_plate","acacia_pressure_plate","jungle_pressure_plate","spruce_pressure_plate","birch_pressure_plate","oak_pressure_plate","mushroom_stem","white_banner","orange_banner","magenta_banner","light_blue_banner","yellow_banner","lime_banner","pink_banner","gray_banner","light_gray_banner","cyan_banner","purple_banner","blue_banner","brown_banner","green_banner","red_banner","black_banner"],HideFlags:27}}]}

################
# Tutorial box #
################

# Keep a white wool block in the tutorial chest at all times
execute if blocks 107 208 32 107 208 32 107 205 32 all run data merge block 107 208 32 {Items:[{Slot:13b,id:"minecraft:white_wool",Count:1b,tag:{display:{Name:"{\"text\":\"Example Power Source\",\"color\":\"white\",\"italic\":\"false\"}"},HideFlags:7,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}

# If the player has the white wool, clear the wool and tp them back to the center

execute as @a[nbt={Inventory:[{id:"minecraft:white_wool"}]}] run spawnpoint @s 8 77 12
execute as @a[nbt={Inventory:[{id:"minecraft:white_wool"}]}] run effect give @s minecraft:blindness 2 0 true
execute as @a[nbt={Inventory:[{id:"minecraft:white_wool"}]}] run tp @s 8 77 12
execute as @a[nbt={Inventory:[{id:"minecraft:white_wool"}]}] run clear @s white_wool

# If the player has the holoblock but hasn't gone through the tutorial, tp them to the tutorial!
execute if entity @e[name="Boss",type=armor_stand,scores={SPEEDRUN=0}] run spawnpoint @a[scores={TUTSTAGE=0},nbt={Inventory:[{id:"minecraft:glass"}]}] 107 203 88
execute if entity @e[name="Boss",type=armor_stand,scores={SPEEDRUN=0}] run effect give @a[scores={TUTSTAGE=0},nbt={Inventory:[{id:"minecraft:glass"}]}] minecraft:blindness 2 0 true
execute if entity @e[name="Boss",type=armor_stand,scores={SPEEDRUN=0}] run tp @a[scores={TUTSTAGE=0},nbt={Inventory:[{id:"minecraft:glass"}]}] 107 203 88 180 0

##############
# VR Headset #
##############

# Set the players' VR bool to false if it has yet to be initialized
scoreboard players add @a IN_VR 0
scoreboard players add @a IN_BACKSTORY 0

# If a player is wearing the headset but isn't in vr, teleport them to the mountain
execute as @a[scores={IN_VR=0,IN_BACKSTORY=0}] if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}] run tp @s -173 14 52
execute as @a[scores={IN_VR=0,IN_BACKSTORY=0}] if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}] run effect give @s minecraft:blindness 3 0 true
execute as @a[scores={IN_VR=0,IN_BACKSTORY=0}] if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}] run scoreboard players set @s IN_VR 1

# If a player is not wearing the headset but is in vr, teleport them back to the bell tower
execute as @a[scores={IN_VR=1,IN_BACKSTORY=0}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}] run tp @s -83 112 52
execute as @a[scores={IN_VR=1,IN_BACKSTORY=0}] unless entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet"}]}] run scoreboard players set @s IN_VR 0

# If the player leaves the bell tower with the vr headset, delete it from their inventory
execute as @a[x=-87,y=108,z=49,dx=8,dy=2,dz=8,nbt={Inventory:[{id:"minecraft:golden_helmet"}]}] run tellraw @s {"text":"The headset returns to its dock...","color":"gold"}
clear @a[x=-87,y=108,z=49,dx=8,dy=2,dz=8] golden_helmet

# Place a new headset in the box, but only if the box is empty
execute if blocks -84 113 52 -84 113 52 -84 110 52 all run data merge block -84 113 52 {Items:[{Slot:13b,id:"minecraft:golden_helmet",Count:1b,tag:{display:{Name:"{\"text\":\"\\\"The Pilgrimage\\\" VR Headset\",\"color\":\"gold\",\"italic\":\"false\"}"},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}]}

#########################
# Holoninja Armor Check #
#########################

execute as @a[scores={C_HELMET_USED=0}] if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run scoreboard players set @s C_HELMET_USED 1
execute as @a[scores={C_CHEST_USED=0}] if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] run scoreboard players set @s C_CHEST_USED 1
execute as @a[scores={C_LEGGINGS_USED=0}] if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] run scoreboard players set @s C_LEGGINGS_USED 1
execute as @a[scores={C_BOOTS_USED=0}] if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] run scoreboard players set @s C_BOOTS_USED 1

##############################
# Collector Inventory Checks #
##############################

execute as @a[scores={C_HELMET_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:leather_helmet"}]}] run scoreboard players set @a C_HELMET_GET 1
execute as @a[scores={C_CHEST_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:leather_chestplate"}]}] run scoreboard players set @a C_CHEST_GET 1
execute as @a[scores={C_LEGGINGS_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:leather_leggings"}]}] run scoreboard players set @a C_LEGGINGS_GET 1
execute as @a[scores={C_BOOTS_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:leather_boots"}]}] run scoreboard players set @a C_BOOTS_GET 1
execute as @a[scores={C_DOG_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:wolf_spawn_egg"}]}] run scoreboard players set @a C_DOG_GET 1
execute as @a[scores={C_PICK_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:iron_pickaxe"}]}] run scoreboard players set @a C_PICK_GET 1
execute as @a[scores={C_SWORD_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:iron_sword"}]}] run scoreboard players set @a C_SWORD_GET 1
execute as @a[scores={C_SHIELD_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:shield",tag:{Unbreakable:1}}]}] run scoreboard players set @a C_SHIELD_GET 1
execute as @a[scores={C_AXE_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:iron_axe"}]}] run scoreboard players set @a C_AXE_GET 1
execute as @a[scores={C_WATER_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:water_bucket"}]}] run scoreboard players set @a C_WATER_GET 1
execute as @a[scores={C_TRIDENT_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:trident"}]}] run scoreboard players set @a C_TRIDENT_GET 1
execute as @a[scores={C_BOW_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:bow"}]}] run scoreboard players set @a C_BOW_GET 1
execute as @a[scores={C_SHOVEL_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:iron_shovel"}]}] run scoreboard players set @a C_SHOVEL_GET 1
execute as @a[scores={C_SHEARS_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:shears"}]}] run scoreboard players set @a C_SHEARS_GET 1
execute as @a[scores={C_GLASS_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:glass"}]}] run scoreboard players set @a C_GLASS_GET 1
execute as @a[scores={C_FIRE_GET=0}] if entity @s[nbt={Inventory:[{id:"minecraft:flint_and_steel"}]}] run scoreboard players set @a C_FIRE_GET 1

# Give the achievement if everything collected!
execute if entity @a[scores={C_FIRE_GET=1,C_HELMET_GET=1,C_CHEST_GET=1,C_LEGGINGS_GET=1,C_BOOTS_GET=1,C_DOG_GET=1,C_PICK_GET=1,C_SWORD_GET=1,C_SHIELD_GET=1,C_AXE_GET=1,C_WATER_GET=1,C_TRIDENT_GET=1,C_BOW_GET=1,C_SHOVEL_GET=1,C_SHEARS_GET=1,C_GLASS_GET=1}] run advancement grant @a only t:challenges/collector

####################
# Levitation Poles #
####################

effect give @a[x=8,y=19,z=-313,dx=0,dy=22,dz=0] levitation 1 2 false

##############
# Wool Drops #
##############

execute as @a[scores={ORANGE_DROPPED=2}] run give @s orange_wool{HideFlags:1,display:{Name:"{\"text\":\"§6Orange Source\"}",Lore:["§fAn enigmatic battery found in the Underground"]},Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
execute as @a[scores={ORANGE_DROPPED=2}] run scoreboard players set @s ORANGE_DROPPED 0
execute if entity @a[scores={ORANGE_DROPPED=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:orange_wool"}}]
execute as @a[scores={ORANGE_DROPPED=1}] run tellraw @s {"text":"The power source clings to your hand like a magnet...","color":"gold"}
execute as @a[scores={ORANGE_DROPPED=1}] run scoreboard players set @s ORANGE_DROPPED 2

execute as @a[scores={LIME_DROPPED=2}] run give @s lime_wool{HideFlags:1,display:{Name:"{\"text\":\"§aLime Source\"}",Lore:["§fAn enigmatic battery found in an ancient factory"]},Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
execute as @a[scores={LIME_DROPPED=2}] run scoreboard players set @s LIME_DROPPED 0
execute if entity @a[scores={LIME_DROPPED=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:lime_wool"}}]
execute as @a[scores={LIME_DROPPED=1}] run tellraw @s {"text":"The power source clings to your hand like a magnet...","color":"gold"}
execute as @a[scores={LIME_DROPPED=1}] run scoreboard players set @s LIME_DROPPED 2

execute as @a[scores={YELLOW_DROPPED=2}] run give @s yellow_wool{HideFlags:1,display:{Name:"{\"text\":\"§eYellow Source\"}",Lore:["§fAn enigmatic battery found beneath Sol Corp"]},Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
execute as @a[scores={YELLOW_DROPPED=2}] run scoreboard players set @s YELLOW_DROPPED 0
execute if entity @a[scores={YELLOW_DROPPED=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:yellow_wool"}}]
execute as @a[scores={YELLOW_DROPPED=1}] run tellraw @s {"text":"The power source clings to your hand like a magnet...","color":"gold"}
execute as @a[scores={YELLOW_DROPPED=1}] run scoreboard players set @s YELLOW_DROPPED 2

execute as @a[scores={MAGENTA_DROPPED=2}] run give @s magenta_wool{HideFlags:1,display:{Name:"{\"text\":\"§dMagenta Source\"}",Lore:["§fAn enigmatic battery found in the cathedral"]},Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
execute as @a[scores={MAGENTA_DROPPED=2}] run scoreboard players set @s MAGENTA_DROPPED 0
execute if entity @a[scores={MAGENTA_DROPPED=1}] run kill @e[type=item,nbt={Item:{id:"minecraft:magenta_wool"}}]
execute as @a[scores={MAGENTA_DROPPED=1}] run tellraw @s {"text":"The power source clings to your hand like a magnet...","color":"gold"}
execute as @a[scores={MAGENTA_DROPPED=1}] run scoreboard players set @s MAGENTA_DROPPED 2

###############
# Spawnpoints #
###############

# Lime wool box
spawnpoint @a[x=87,y=13,z=-91,dx=4,dy=4,dz=4] 90 14 -89
execute if block 90 14 -89 glass run setblock 90 14 -89 air
execute if block 90 15 -89 glass run setblock 90 15 -89 air

# Orange wool box
spawnpoint @a[x=6,y=34,z=119,dx=4,dy=4,dz=4] 8 35 122
execute if block 8 35 122 glass run setblock 8 35 122 air
execute if block 8 36 122 glass run setblock 8 36 122 air

# Yellow wool box
spawnpoint @a[x=6,y=61,z=6,dx=4,dy=4,dz=4] 9 62 8
execute if block 9 62 8 glass run setblock 9 62 8 air
execute if block 9 63 8 glass run setblock 9 63 8 air

# Magenta wool box (in simulation)
spawnpoint @a[x=-235,y=41,z=50,dx=4,dy=4,dz=4] -232 42 52
execute if block -232 42 52 glass run setblock -232 42 52 air
execute if block -232 43 52 glass run setblock -232 43 52 air

# Beginning
spawnpoint @a[x=8,y=80,z=128,dx=0,dy=1,dz=0] 8 80 128
execute if block 8 80 128 glass run setblock 8 80 128 air
execute if block 8 81 128 glass run setblock 8 81 128 air

# In front of Sol Corp
spawnpoint @a[x=67,y=69,z=48,dx=4,dy=4,dz=8] 67 69 52
execute if block 67 69 52 glass run setblock 67 69 52 air
execute if block 67 70 52 glass run setblock 67 70 52 air

# First rocket lab checkpoint
execute if entity @a[x=76,y=48,z=100,dx=4,dy=4,dz=4] run scoreboard players set @e[type=armor_stand,name="Boss"] YELLOW_PROG 1
spawnpoint @a[x=76,y=48,z=100,dx=4,dy=4,dz=4] 78 50 107
execute if block 78 50 107 glass run setblock 78 50 107 air
execute if block 78 51 107 glass run setblock 78 51 107 air

# Second rocket lab checkpoint
spawnpoint @a[x=36,y=51,z=24,dx=17,dy=4,dz=4] 42 53 26
execute if block 42 53 26 glass run setblock 42 53 26 air
execute if block 42 54 26 glass run setblock 42 54 26 air

# In front of the library
spawnpoint @a[x=-40,y=66,z=87,dx=2,dy=2,dz=2] -39 66 88
execute if block -39 66 88 glass run setblock -39 66 88 air
execute if block -39 67 88 glass run setblock -39 67 88 air

# Start of the catacombs
execute if entity @a[x=-83,y=50,z=69,dx=8,dy=6,dz=12] run scoreboard players set @e[type=armor_stand,name="Boss"] MAGENTA_PROG 1
spawnpoint @a[x=-83,y=50,z=69,dx=8,dy=6,dz=12] -78 53 81
execute if block -78 53 81 glass run setblock -78 53 81 air
execute if block -78 54 81 glass run setblock -78 54 81 air

# In the middle of the catacombs
spawnpoint @a[x=-117,y=48,z=25,dx=8,dy=8,dz=12] -112 53 23
execute if block -112 53 23 glass run setblock -112 53 23 air
execute if block -112 54 23 glass run setblock -112 54 23 air

# Before the cathedral
spawnpoint @a[x=-94,y=55,z=43,dx=10,dy=6,dz=18] -91 59 52
execute if block -91 59 52 glass run setblock -91 59 52 air
execute if block -91 60 52 glass run setblock -91 60 52 air

# The bell tower
spawnpoint @a[x=-86,y=111,z=50,dx=4,dy=4,dz=4] -83 112 52
execute if block -83 112 52 glass run setblock -83 112 52 air
execute if block -83 113 52 glass run setblock -83 113 52 air

# The mountain
spawnpoint @a[x=-175,y=14,z=49,dx=4,dy=4,dz=6] -172 7 52
execute if block -172 7 52 glass run setblock -172 7 52 air
execute if block -172 8 52 glass run setblock -172 8 52 air

# Fungi films train entrance
spawnpoint @a[x=-24,y=76,z=-44,dx=4,dy=4,dz=10] -23 76 -42
execute if block -23 76 -42 glass run setblock -23 76 -42 air
execute if block -23 77 -42 glass run setblock -23 77 -42 air

# Fungi films stairs entrance
spawnpoint @a[x=-64,y=81,z=4,dx=6,dy=4,dz=8] -61 81 5
execute if block -61 81 5 glass run setblock -61 81 5 air
execute if block -61 82 5 glass run setblock -61 82 5 air

# Western town set
execute if entity @a[x=-65,y=39,z=-5,dx=8,dy=6,dz=8] run scoreboard players set @e[type=armor_stand,name="Boss"] ORANGE_PROG 1
spawnpoint @a[x=-65,y=39,z=-5,dx=8,dy=6,dz=8] -67 41 -1
execute if block -67 41 -1 glass run setblock -67 41 -1 air
execute if block -67 42 -1 glass run setblock -67 42 -1 air

# Underground city 1
spawnpoint @a[x=-34,y=20,z=3,dx=8,dy=4,dz=8] -26 23 1
execute if block -26 23 1 glass run setblock -26 23 1 air
execute if block -26 24 1 glass run setblock -26 24 1 air

# Underground city 2
spawnpoint @a[x=-44,y=19,z=73,dx=4,dy=4,dz=4] -46 19 77
execute if block -46 19 77 glass run setblock -46 19 77 air
execute if block -46 20 77 glass run setblock -46 20 77 air

# Underground city 3
spawnpoint @a[x=45,y=29,z=68,dx=4,dy=4,dz=4] 52 29 71
execute if block 52 29 71 glass run setblock 52 29 71 air
execute if block 52 30 71 glass run setblock 52 30 71 air

# Underground city 4
spawnpoint @a[x=6,y=63,z=128,dx=2,dy=2,dz=2] 8 63 132
execute if block 8 63 132 glass run setblock 8 63 132 air
execute if block 8 64 132 glass run setblock 8 64 132 air

# In front of the arboretum
spawnpoint @a[x=102,y=81,z=-42,dx=30,dy=16,dz=30] 117 81 -13
execute if block 117 81 -13 glass run setblock 117 81 -13 air
execute if block 117 82 -13 glass run setblock 117 82 -13 air

# Lava fall spider caves
execute if entity @a[x=81,y=43,z=-20,dx=8,dy=4,dz=4] run scoreboard players set @e[type=armor_stand,name="Boss"] LIME_PROG 1
spawnpoint @a[x=81,y=43,z=-20,dx=8,dy=4,dz=4] 78 43 -19
execute if block 78 43 -19 glass run setblock 78 43 -19 air
execute if block 78 44 -19 glass run setblock 78 44 -19 air

# Giant spider cave
spawnpoint @a[x=106,y=15,z=-57,dx=12,dy=20,dz=32] 118 19 -39
execute if block 118 19 -39 glass run setblock 118 19 -39 air
execute if block 118 20 -39 glass run setblock 118 20 -39 air

# War factory entrance
spawnpoint @a[x=6,y=24,z=-54,dx=4,dy=4,dz=4] 4 26 -52
execute if block 4 26 -52 glass run setblock 4 26 -52 air
execute if block 4 27 -52 glass run setblock 4 27 -52 air

# War factory hive room
spawnpoint @a[x=-16,y=9,z=-91,dx=4,dy=4,dz=4] -18 11 -84
execute if block -18 11 -84 glass run setblock -18 11 -84 air
execute if block -18 12 -84 glass run setblock -18 12 -84 air

# War factory gears room
spawnpoint @a[x=28,y=9,z=-91,dx=4,dy=4,dz=4] 34 11 -84
execute if block 34 11 -84 glass run setblock 34 11 -84 air
execute if block 34 12 -84 glass run setblock 34 12 -84 air

# Backstory 1 spawnpoint
execute if block -2 39 -19 glass run setblock -2 39 -19 air
execute if block -2 40 -19 glass run setblock -2 40 -19 air

# Backstory 2 spawnpoint
execute if block 17 39 -19 glass run setblock 17 39 -19 air
execute if block 17 40 -19 glass run setblock 17 40 -19 air

# Backstory 3 spawnpoint
execute if block 8 8 -137 glass run setblock 8 8 -137 air
execute if block 8 9 -137 glass run setblock 8 9 -137 air

# Boss battle spawnpoint
execute if block 8 84 35 glass run setblock 8 84 35 air
execute if block 8 85 35 glass run setblock 8 85 35 air