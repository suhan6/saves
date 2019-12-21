###########################
#                         #
# TOTALITY by Cold Fusion #
#                         #
#    setup.mcfunction     #
#                         #
###########################

#give @p yellow_wool{HideFlags:1,display:{Name:"{\"text\":\"§eYellow Source\"}",Lore:["§fAn enigmatic battery found beneath Sol Corp"]},Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
#give @p magenta_wool{HideFlags:1,display:{Name:"{\"text\":\"§dMagenta Source\"}",Lore:["§fAn enigmatic battery found in the cathedral"]},Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
#give @p orange_wool{HideFlags:1,display:{Name:"{\"text\":\"§6Orange Source\"}",Lore:["§fAn enigmatic battery found in the Underground"]},Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
#give @p lime_wool{HideFlags:1,display:{Name:"{\"text\":\"§aLime Source\"}",Lore:["§fAn enigmatic battery found in an ancient factory"]},Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

kill @e[type=snow_golem]
kill @e[type=iron_golem]
difficulty normal

#########################
# Scoreboard Objectives #
#########################

scoreboard objectives add PLACE minecraft.used:minecraft.glass
scoreboard objectives add TakeTorch minecraft.mined:minecraft.torch
scoreboard objectives add TakeWallTorch minecraft.mined:minecraft.wall_torch
scoreboard objectives add PLACE_HAND dummy
scoreboard objectives add BUCKET_FILL minecraft.used:minecraft.bucket
scoreboard objectives add BUCKET_EMPTY minecraft.used:minecraft.water_bucket
scoreboard objectives add BUCKET_HAND dummy
scoreboard objectives add EGG_USED minecraft.used:minecraft.egg
scoreboard objectives add EGG_HAND dummy
scoreboard objectives add DOGGO minecraft.used:minecraft.wolf_spawn_egg
scoreboard objectives add GRANT_ITEM dummy
scoreboard objectives add FORCE_FIELD dummy
scoreboard objectives add FORCE_FIELD_LAST dummy
scoreboard objectives add DOOR_OPEN_1 dummy
scoreboard objectives add DOOR_OPEN_2 dummy
scoreboard objectives add vanishTime dummy
scoreboard objectives add mobHealth dummy
scoreboard objectives add siren dummy
scoreboard objectives add TALK_NUM dummy
scoreboard objectives add TALK_TIME dummy
scoreboard objectives add SUPPLY_NUM dummy
scoreboard objectives add VICTORY_NUM dummy
scoreboard objectives add BOSS_TALKING dummy
scoreboard objectives add BOSS_MODE dummy
scoreboard objectives add BOSS_TIME dummy
scoreboard objectives add BOSS_PHASE dummy
scoreboard objectives add BOSS_ACTIVE dummy
scoreboard objectives add LIME_COLLECT dummy
scoreboard objectives add YELLOW_COLLECT dummy
scoreboard objectives add MAGENTA_COLLECT dummy
scoreboard objectives add ORANGE_COLLECT dummy
scoreboard objectives add BACKSTORY_NUM dummy
scoreboard objectives add INTRO_TRIGGERED dummy
scoreboard objectives add ENDING_OPEN dummy
scoreboard objectives add IN_VR dummy
scoreboard objectives add BS1STAGE dummy
scoreboard objectives add BS2STAGE dummy
scoreboard objectives add BS3STAGE dummy
scoreboard objectives add WARPLOC dummy
scoreboard objectives add IN_BACKSTORY dummy
scoreboard objectives add LIME_DROPPED minecraft.dropped:minecraft.lime_wool
scoreboard objectives add YELLOW_DROPPED minecraft.dropped:minecraft.yellow_wool
scoreboard objectives add MAGENTA_DROPPED minecraft.dropped:minecraft.magenta_wool
scoreboard objectives add ORANGE_DROPPED minecraft.dropped:minecraft.orange_wool
scoreboard objectives add POTION_CONSUMED minecraft.used:minecraft.potion
scoreboard objectives add POTION_DROPPED minecraft.dropped:minecraft.potion
scoreboard objectives add HOLO_DROPPED minecraft.dropped:minecraft.glass
scoreboard objectives add PURCHASE_ITEM dummy
scoreboard objectives add MONEY_AMOUNT dummy
scoreboard objectives add HOLOBLOCK_AMOUNT dummy
scoreboard objectives add MONUMENT_STAGE dummy
scoreboard objectives add FOOD food
scoreboard objectives add C_DOG_USED minecraft.used:minecraft.wolf_spawn_egg
scoreboard objectives add C_PICK_USED minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add C_SWORD_USED minecraft.used:minecraft.iron_sword
scoreboard objectives add C_SHIELD_USED minecraft.used:minecraft.shield
scoreboard objectives add C_AXE_USED minecraft.used:minecraft.iron_axe
scoreboard objectives add C_WATER_USED minecraft.used:minecraft.water_bucket
scoreboard objectives add C_TRIDENT_USED minecraft.used:minecraft.trident
scoreboard objectives add C_BOW_USED minecraft.used:minecraft.bow
scoreboard objectives add C_SHOVEL_USED minecraft.used:minecraft.iron_shovel
scoreboard objectives add C_SHEARS_USED minecraft.used:minecraft.shears
scoreboard objectives add C_HELMET_USED dummy
scoreboard objectives add C_CHEST_USED dummy
scoreboard objectives add C_LEGGINGS_USED dummy
scoreboard objectives add C_BOOTS_USED dummy
scoreboard objectives add C_FIRE_USED minecraft.used:minecraft.flint_and_steel
scoreboard objectives add C_DEATHS minecraft.custom:minecraft.deaths "Deaths"
scoreboard objectives add C_TIME minecraft.custom:minecraft.play_one_minute
scoreboard objectives add C_GLASS_GET dummy
scoreboard objectives add C_DOG_GET dummy
scoreboard objectives add C_PICK_GET dummy
scoreboard objectives add C_SWORD_GET dummy
scoreboard objectives add C_SHIELD_GET dummy
scoreboard objectives add C_AXE_GET dummy
scoreboard objectives add C_WATER_GET dummy
scoreboard objectives add C_TRIDENT_GET dummy
scoreboard objectives add C_BOW_GET dummy
scoreboard objectives add C_SHOVEL_GET dummy
scoreboard objectives add C_SHEARS_GET dummy
scoreboard objectives add C_HELMET_GET dummy
scoreboard objectives add C_CHEST_GET dummy
scoreboard objectives add C_LEGGINGS_GET dummy
scoreboard objectives add C_BOOTS_GET dummy
scoreboard objectives add C_FIRE_GET dummy
scoreboard objectives add C_ARTIFACT dummy
scoreboard objectives add ECLIPSE_ANIM dummy

##################
# Monument reset #
##################

clone -63 114 -315 -49 129 -301 1 59 -300
setblock 8 111 -293 minecraft:brown_terracotta

########
# NPCS #
########

kill @e[type=armor_stand,tag=!nodelete]
summon armor_stand 7 77 9 {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"golden_boots",Count:1b},{id:"golden_leggings",Count:1b},{id:"golden_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"da124de4-5c96-4948-8bcc-fa0f19666199",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWFmMjNiYjlhNDkxMjVjMmNlOGNhYWJkNzIyNDI0MThiNzcyNGU0OGU4MDE4ZjEyMzIyODc1YjIzN2RjYSJ9fX0="}]}}}}],HandItems:[{},{}],CustomName:"{\"text\":\"Boss\",\"color\":\"gold\"}",CustomNameVisible:1b,DisabledSlots:2039583,Pose:{LeftArm:[0f,0f,270f],RightArm:[0f,0f,90f]}}
scoreboard players set @e[name="Boss",type=armor_stand] TALK_TIME 0
scoreboard players set @e[name="Boss",type=armor_stand] TALK_NUM 0
scoreboard players set @e[name="Boss",type=armor_stand] SUPPLY_NUM 0
scoreboard players set @e[name="Boss",type=armor_stand] VICTORY_PROGRESS 0
scoreboard players set @e[name="Boss",type=armor_stand] BOSS_TALKING 0
scoreboard players set @e[name="Boss",type=armor_stand] LIME_COLLECT 0
scoreboard players set @e[name="Boss",type=armor_stand] YELLOW_COLLECT 0
scoreboard players set @e[name="Boss",type=armor_stand] ORANGE_COLLECT 0
scoreboard players set @e[name="Boss",type=armor_stand] MAGENTA_COLLECT 0
scoreboard players set @e[name="Boss",type=armor_stand] BS1STAGE 0
scoreboard players set @e[name="Boss",type=armor_stand] BS2STAGE 0
scoreboard players set @e[name="Boss",type=armor_stand] BS3STAGE 0
scoreboard players set @e[name="Boss",type=armor_stand] WARPLOC 0
scoreboard players set @e[name="Boss",type=armor_stand] BACKSTORY_NUM 5
scoreboard players set @e[name="Boss",type=armor_stand] ENDING_OPEN 0
scoreboard players set @e[name="Boss",type=armor_stand] DOOR_OPEN_1 0
scoreboard players set @e[name="Boss",type=armor_stand] DOOR_OPEN_2 0
scoreboard players set @e[name="Boss",type=armor_stand] BOSS_ACTIVE 0
scoreboard players set @e[name="Boss",type=armor_stand] INTRO_TRIGGERED 0
scoreboard players set @e[name="Boss",type=armor_stand] C_ARTIFACT 0
scoreboard players set @e[name="Boss",type=armor_stand] ECLIPSE_ANIM 0

########################
# 1.13 Equipment Items #
########################

# Holoblock + shopping book
data merge block 8 77 8 {Items:[{Slot:22b,id:"minecraft:written_book",Count:1b,tag:{display:{Name:"{\"text\":\"taterPad Air\",\"color\":\"light_purple\",\"italic\":\"false\"}",Lore:["§7Sol Corp Prime membership included","§7Free, instantaneous drone delivery!"]},title:"taterPad Air",author:"",pages:["[{\"text\":\"\"},{\"text\":\"Solar Flare (x8)\",\"color\":\"blue\",\"underlined\":\"true\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"Emits light when placed\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @p PURCHASE_ITEM 1\"}},{\"text\":\"\\nCost: 4 Credits\"},{\"text\":\"\\n\\nAqua Grenade (x4)\",\"color\":\"blue\",\"underlined\":\"true\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"An explosive ranged weapon\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @p PURCHASE_ITEM 2\"}},{\"text\":\"\\nCost: 8 Credits\"},{\"text\":\"\\n\\nCage Buster (x1)\",\"color\":\"blue\",\"underlined\":\"true\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"Can break up to 9 spawners\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @p PURCHASE_ITEM 3\"}},{\"text\":\"\\nCost: 24 Credits\"},{\"text\":\"\\n\\nFruit of the Gods (x1)\",\"color\":\"blue\",\"underlined\":\"true\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"Restores some health\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @p PURCHASE_ITEM 4\"}},{\"text\":\"\\nCost: 4 Credits\"},{\"text\":\"\\n\\nEnergy Saber (x1)\",\"color\":\"blue\",\"underlined\":\"true\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"A shockingly powerful (but fragile) blade\"},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/scoreboard players set @p PURCHASE_ITEM 5\"}},{\"text\":\"\\nCost: 24 Credits\"}]"]}},{Slot:13b,id:"minecraft:glass",Count:1b,tag:{display:{Name:"{\"text\":\"§dHoloblock\"}",Lore:["§f4 Damage","","§7Right click to place holographic walls","§7Can also be used as a basic weapon"]},Enchantments:[{id:"minecraft:infinity",lvl:1}],AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"Damage",Slot:"mainhand",Amount:4,Operation:0,UUIDMost:42700,UUIDLeast:168669}],CanDestroy:["minecraft:wall_torch","minecraft:glass","minecraft:torch"],CanPlaceOn:["spawner","quartz_block","acacia_bark","acacia_door","acacia_fence","acacia_leaves","acacia_log","acacia_planks","acacia_sapling","acacia_slab","acacia_stairs","activator_rail","allium","andesite","anvil","azure_bluet","banner","barrier","beacon","white_bed","orange_bed","magenta_bed","light_blue_bed","yellow_bed","lime_bed","pink_bed","gray_bed","light_gray_bed","cyan_bed","purple_bed","blue_bed","brown_bed","green_bed","red_bed","black_bed","bedrock","beetroots","birch_bark","birch_door","birch_fence","birch_fence_gate","birch_leaves","birch_log","birch_planks","birch_sapling","birch_slab","birch_stairs","black_carpet","black_concrete","black_concrete_powder","black_glazed_terracotta","black_shulker_box","black_stained_glass","black_stained_glass_pane","black_terracotta","black_wool","blue_carpet","blue_concrete","blue_concrete_powder","blue_glazed_terracotta","blue_orchid","blue_shulker_box","blue_stained_glass","blue_stained_glass_pane","blue_terracotta","blue_wool","bone_block","bookshelf","brewing_stand","brick_slab","brick_stairs","bricks","brown_carpet","brown_concrete","brown_concrete_powder","brown_glazed_terracotta","brown_mushroom","brown_mushroom_block","brown_shulker_box","brown_stained_glass","brown_stained_glass_pane","brown_terracotta","brown_wool","cactus","cake","carrots","cauldron","chain_command_block","chest","chipped_anvil","chiseled_quartz","chiseled_red_sandstone","chiseled_sandstone","chiseled_stone_bricks","chorus_flower","chorus_plant","clay","coal_block","coal_ore","coarse_dirt","cobblestone","cobblestone_slab","cobblestone_stairs","cobblestone_wall","cobweb","cocoa","command_block","comparator","cracked_stone_bricks","crafting_table","creeper_head","cut_red_sandstone","cut_sandstone","cyan_carpet","cyan_concrete","cyan_concrete_powder","cyan_glazed_terracotta","cyan_shulker_box","cyan_stained_glass","cyan_stained_glass_pane","cyan_terracotta","cyan_wool","damaged_anvil","dandelion","dark_oak_bark","dark_oak_door","dark_oak_fence","dark_oak_fence_gate","dark_oak_leaves","dark_oak_log","dark_oak_planks","dark_oak_sapling","dark_oak_slab","dark_oak_stairs","dark_prismarine","daylight_detector","dead_bush","detector_rail","diamond_block","diamond_ore","diorite","dirt","dispenser","dragon_egg","dragon_head","dropper","emerald_block","emerald_ore","enchanting_table","end_gateway","end_portal","end_portal_frame","end_rod","end_stone","end_stone_bricks","ender_chest","farmland","fern","fire","flower_pot","flowing_lava","flowing_water","frosted_ice","furnace","glass","glass_pane","glowstone","gold_block","gold_ore","granite","grass","grass_block","grass_path","gravel","gray_carpet","gray_concrete","gray_concrete_powder","gray_glazed_terracotta","gray_shulker_box","gray_stained_glass","gray_stained_glass_pane","gray_terracotta","gray_wool","green_carpet","green_concrete","green_concrete_powder","green_glazed_terracotta","green_shulker_box","green_stained_glass","green_stained_glass_pane","green_terracotta","green_wool","hay_bale","heavy_weighted_pressure_plate","hopper","ice","infested_chiseled_stone_bricks","infested_cobblestone","infested_cracked_stone_bricks","infested_mossy_stone_bricks","infested_stone","infested_stone_bricks","iron_bars","iron_block","iron_door","iron_ore","iron_trapdoor","jack_o_lantern","jukebox","jungle_bark","jungle_door","jungle_fence","jungle_fence_gate","jungle_leaves","jungle_log","jungle_planks","jungle_sapling","jungle_slab","jungle_stairs","ladder","lapis_block","lapis_ore","large_fern","lava","lever","light_blue_carpet","light_blue_concrete","light_blue_concrete_powder","light_blue_glazed_terracotta","light_blue_shulker_box","light_blue_stained_glass","light_blue_stained_glass_pane","light_blue_terracotta","light_blue_wool","light_gray_carpet","light_gray_concrete","light_gray_concrete_powder","light_gray_glazed_terracotta","light_gray_shulker_box","light_gray_stained_glass","light_gray_stained_glass_pane","light_gray_terracotta","light_gray_wool","light_weighted_pressure_plate","lilac","lily_pad","lime_carpet","lime_concrete","lime_concrete_powder","lime_glazed_terracotta","lime_shulker_box","lime_stained_glass","lime_stained_glass_pane","lime_terracotta","lime_wool","magenta_carpet","magenta_concrete","magenta_concrete_powder","magenta_glazed_terracotta","magenta_shulker_box","magenta_stained_glass","magenta_stained_glass_pane","magenta_terracotta","magenta_wool","magma_block","melon_block","melon_plant","melon_stem","mob_spawner","mossy_cobblestone","mossy_cobblestone_wall","mossy_stone_bricks","mycelium","nether_brick_fence","nether_brick_slab","nether_brick_stairs","nether_bricks","nether_portal","nether_quartz_ore","nether_wart","nether_wart_block","netherrack","note_block","oak_bark","oak_door","oak_fence","oak_fence_gate","oak_leaves","oak_log","oak_planks","oak_sapling","oak_slab","oak_stairs","observer","obsidian","orange_carpet","orange_concrete","orange_concrete_powder","orange_glazed_terracotta","orange_shulker_box","orange_stained_glass","orange_stained_glass_pane","orange_terracotta","orange_tulip","orange_wool","oxeye_daisy","packed_ice","peony","petrified_oak_slab","pink_carpet","pink_concrete","pink_concrete_powder","pink_glazed_terracotta","pink_shulker_box","pink_stained_glass","pink_stained_glass_pane","pink_terracotta","pink_tulip","pink_wool","piston","piston_head","player_head","podzol","polished_andesite","polished_diorite","polished_granite","poppy","potatoes","powered_rail","prismarine","prismarine_bricks","carved_pumpkin","pumpkin_stem","purple_carpet","purple_concrete","purple_concrete_powder","purple_glazed_terracotta","purple_shulker_box","purple_stained_glass","purple_stained_glass_pane","purple_terracotta","purple_wool","purpur_block","purpur_pillar","purpur_slab","purpur_stairs","smooth_quartz","quartz_pillar","quartz_slab","quartz_stairs","rail","red_carpet","red_concrete","red_concrete_powder","red_glazed_terracotta","red_mushroom","red_mushroom_block","red_nether_bricks","red_sand","red_sandstone","red_sandstone_slab","red_sandstone_stairs","red_shulker_box","red_stained_glass","red_stained_glass_pane","red_terracotta","red_tulip","red_wool","redstone_block","redstone_lamp","redstone_ore","redstone_torch","redstone_wire","repeater","repeating_command_block","rose_bush","sand","sandstone","sandstone_slab","sandstone_stairs","sea_lantern","sign","skeleton_skull","slime_block","smooth_red_sandstone","smooth_sandstone","smooth_stone","snow","snow_block","soul_sand","sponge","spruce_bark","spruce_door","spruce_fence","spruce_fence_gate","spruce_leaves","spruce_log","spruce_planks","spruce_sapling","spruce_slab","spruce_stairs","sticky_piston","stone","stone_brick_slab","stone_brick_stairs","stone_bricks","stone_button","stone_pressure_plate","stone_slab","structure_block","structure_void","sugar_cane","sunflower","tall_grass","terracotta","tnt","torch","trapped_chest","tripwire","tripwire_hook","vine","wall_sign","wall_torch","water","wet_sponge","wheat","white_carpet","white_concrete","white_concrete_powder","white_glazed_terracotta","white_shulker_box","white_stained_glass","white_stained_glass_pane","white_terracotta","white_tulip","white_wool","wither_skeleton_skull","oak_button","spruce_button","acacia_button","birch_button","dark_oak_button","jungle_button","oak_trapdoor","spruce_trapdoor","acacia_trapdoor","dark_oak_trapdoor","birch_trapdoor","jungle_trapdoor","yellow_carpet","yellow_concrete","yellow_concrete_powder","yellow_glazed_terracotta","yellow_shulker_box","yellow_stained_glass","yellow_stained_glass_pane","yellow_terracotta","yellow_wool","zombie_head","redstone_wall_torch","dark_oak_pressure_plate","acacia_pressure_plate","jungle_pressure_plate","spruce_pressure_plate","birch_pressure_plate","oak_pressure_plate","mushroom_stem","white_banner","orange_banner","magenta_banner","light_blue_banner","yellow_banner","lime_banner","pink_banner","gray_banner","light_gray_banner","cyan_banner","purple_banner","blue_banner","brown_banner","green_banner","red_banner","black_banner"],HideFlags:27}}]}

# Wolf spawn egg
data merge block 53 81 -62 {Items:[{Slot:11b,id:"minecraft:sunflower",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"§6Sol Credit\"}",Lore:["§7A universal currency accepted by all shops"]},Enchantments:[{id:"minecraft:fortune",lvl:1}]}},{Slot:15b,id:"minecraft:sunflower",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"§6Sol Credit\"}",Lore:["§7A universal currency accepted by all shops"]},Enchantments:[{id:"minecraft:fortune",lvl:1}]}},{Slot:22b,id:"minecraft:bone",Count:16b,tag:{display:{Name:"{\"text\":\"§6Cyberpup Attunement Device\"}",Lore:["§7Use on a Cyberpup to establish ownership"]},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:7}},{Slot:13b,id:"minecraft:wolf_spawn_egg",Count:1b,tag:{display:{Name:"{\"text\":\"§dCyberpup\"}",Lore:["§7Summons a robotic dog","§7The pup will return to its capsule","§7if it takes too much damage"]},Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:31,CanPlaceOn:["spawner","quartz_block","acacia_bark","acacia_door","acacia_fence","acacia_leaves","acacia_log","acacia_planks","acacia_sapling","acacia_slab","acacia_stairs","activator_rail","allium","andesite","anvil","azure_bluet","banner","barrier","beacon","white_bed","orange_bed","magenta_bed","light_blue_bed","yellow_bed","lime_bed","pink_bed","gray_bed","light_gray_bed","cyan_bed","purple_bed","blue_bed","brown_bed","green_bed","red_bed","black_bed","bedrock","beetroots","birch_bark","birch_door","birch_fence","birch_fence_gate","birch_leaves","birch_log","birch_planks","birch_sapling","birch_slab","birch_stairs","black_carpet","black_concrete","black_concrete_powder","black_glazed_terracotta","black_shulker_box","black_stained_glass","black_stained_glass_pane","black_terracotta","black_wool","blue_carpet","blue_concrete","blue_concrete_powder","blue_glazed_terracotta","blue_orchid","blue_shulker_box","blue_stained_glass","blue_stained_glass_pane","blue_terracotta","blue_wool","bone_block","bookshelf","brewing_stand","brick_slab","brick_stairs","bricks","brown_carpet","brown_concrete","brown_concrete_powder","brown_glazed_terracotta","brown_mushroom","brown_mushroom_block","brown_shulker_box","brown_stained_glass","brown_stained_glass_pane","brown_terracotta","brown_wool","cactus","cake","carrots","cauldron","chain_command_block","chest","chipped_anvil","chiseled_quartz","chiseled_red_sandstone","chiseled_sandstone","chiseled_stone_bricks","chorus_flower","chorus_plant","clay","coal_block","coal_ore","coarse_dirt","cobblestone","cobblestone_slab","cobblestone_stairs","cobblestone_wall","cobweb","cocoa","command_block","comparator","cracked_stone_bricks","crafting_table","creeper_head","cut_red_sandstone","cut_sandstone","cyan_carpet","cyan_concrete","cyan_concrete_powder","cyan_glazed_terracotta","cyan_shulker_box","cyan_stained_glass","cyan_stained_glass_pane","cyan_terracotta","cyan_wool","damaged_anvil","dandelion","dark_oak_bark","dark_oak_door","dark_oak_fence","dark_oak_fence_gate","dark_oak_leaves","dark_oak_log","dark_oak_planks","dark_oak_sapling","dark_oak_slab","dark_oak_stairs","dark_prismarine","daylight_detector","dead_bush","detector_rail","diamond_block","diamond_ore","diorite","dirt","dispenser","dragon_egg","dragon_head","dropper","emerald_block","emerald_ore","enchanting_table","end_gateway","end_portal","end_portal_frame","end_rod","end_stone","end_stone_bricks","ender_chest","farmland","fern","fire","flower_pot","flowing_lava","flowing_water","frosted_ice","furnace","glass","glass_pane","glowstone","gold_block","gold_ore","granite","grass","grass_block","grass_path","gravel","gray_carpet","gray_concrete","gray_concrete_powder","gray_glazed_terracotta","gray_shulker_box","gray_stained_glass","gray_stained_glass_pane","gray_terracotta","gray_wool","green_carpet","green_concrete","green_concrete_powder","green_glazed_terracotta","green_shulker_box","green_stained_glass","green_stained_glass_pane","green_terracotta","green_wool","hay_bale","heavy_weighted_pressure_plate","hopper","ice","infested_chiseled_stone_bricks","infested_cobblestone","infested_cracked_stone_bricks","infested_mossy_stone_bricks","infested_stone","infested_stone_bricks","iron_bars","iron_block","iron_door","iron_ore","iron_trapdoor","jack_o_lantern","jukebox","jungle_bark","jungle_door","jungle_fence","jungle_fence_gate","jungle_leaves","jungle_log","jungle_planks","jungle_sapling","jungle_slab","jungle_stairs","ladder","lapis_block","lapis_ore","large_fern","lava","lever","light_blue_carpet","light_blue_concrete","light_blue_concrete_powder","light_blue_glazed_terracotta","light_blue_shulker_box","light_blue_stained_glass","light_blue_stained_glass_pane","light_blue_terracotta","light_blue_wool","light_gray_carpet","light_gray_concrete","light_gray_concrete_powder","light_gray_glazed_terracotta","light_gray_shulker_box","light_gray_stained_glass","light_gray_stained_glass_pane","light_gray_terracotta","light_gray_wool","light_weighted_pressure_plate","lilac","lily_pad","lime_carpet","lime_concrete","lime_concrete_powder","lime_glazed_terracotta","lime_shulker_box","lime_stained_glass","lime_stained_glass_pane","lime_terracotta","lime_wool","magenta_carpet","magenta_concrete","magenta_concrete_powder","magenta_glazed_terracotta","magenta_shulker_box","magenta_stained_glass","magenta_stained_glass_pane","magenta_terracotta","magenta_wool","magma_block","melon_block","melon_plant","melon_stem","mob_spawner","mossy_cobblestone","mossy_cobblestone_wall","mossy_stone_bricks","mycelium","nether_brick_fence","nether_brick_slab","nether_brick_stairs","nether_bricks","nether_portal","nether_quartz_ore","nether_wart","nether_wart_block","netherrack","note_block","oak_bark","oak_door","oak_fence","oak_fence_gate","oak_leaves","oak_log","oak_planks","oak_sapling","oak_slab","oak_stairs","observer","obsidian","orange_carpet","orange_concrete","orange_concrete_powder","orange_glazed_terracotta","orange_shulker_box","orange_stained_glass","orange_stained_glass_pane","orange_terracotta","orange_tulip","orange_wool","oxeye_daisy","packed_ice","peony","petrified_oak_slab","pink_carpet","pink_concrete","pink_concrete_powder","pink_glazed_terracotta","pink_shulker_box","pink_stained_glass","pink_stained_glass_pane","pink_terracotta","pink_tulip","pink_wool","piston","piston_head","player_head","podzol","polished_andesite","polished_diorite","polished_granite","poppy","potatoes","powered_rail","prismarine","prismarine_bricks","carved_pumpkin","pumpkin_stem","purple_carpet","purple_concrete","purple_concrete_powder","purple_glazed_terracotta","purple_shulker_box","purple_stained_glass","purple_stained_glass_pane","purple_terracotta","purple_wool","purpur_block","purpur_pillar","purpur_slab","purpur_stairs","smooth_quartz","quartz_pillar","quartz_slab","quartz_stairs","rail","red_carpet","red_concrete","red_concrete_powder","red_glazed_terracotta","red_mushroom","red_mushroom_block","red_nether_bricks","red_sand","red_sandstone","red_sandstone_slab","red_sandstone_stairs","red_shulker_box","red_stained_glass","red_stained_glass_pane","red_terracotta","red_tulip","red_wool","redstone_block","redstone_lamp","redstone_ore","redstone_torch","redstone_wire","repeater","repeating_command_block","rose_bush","sand","sandstone","sandstone_slab","sandstone_stairs","sea_lantern","sign","skeleton_skull","slime_block","smooth_red_sandstone","smooth_sandstone","smooth_stone","snow","snow_block","soul_sand","sponge","spruce_bark","spruce_door","spruce_fence","spruce_fence_gate","spruce_leaves","spruce_log","spruce_planks","spruce_sapling","spruce_slab","spruce_stairs","sticky_piston","stone","stone_brick_slab","stone_brick_stairs","stone_bricks","stone_button","stone_pressure_plate","stone_slab","structure_block","structure_void","sugar_cane","sunflower","tall_grass","terracotta","tnt","torch","trapped_chest","tripwire","tripwire_hook","vine","wall_sign","wall_torch","water","wet_sponge","wheat","white_carpet","white_concrete","white_concrete_powder","white_glazed_terracotta","white_shulker_box","white_stained_glass","white_stained_glass_pane","white_terracotta","white_tulip","white_wool","wither_skeleton_skull","oak_button","spruce_button","acacia_button","birch_button","dark_oak_button","jungle_button","oak_trapdoor","spruce_trapdoor","acacia_trapdoor","dark_oak_trapdoor","birch_trapdoor","jungle_trapdoor","yellow_carpet","yellow_concrete","yellow_concrete_powder","yellow_glazed_terracotta","yellow_shulker_box","yellow_stained_glass","yellow_stained_glass_pane","yellow_terracotta","yellow_wool","zombie_head","redstone_wall_torch","dark_oak_pressure_plate","acacia_pressure_plate","jungle_pressure_plate","spruce_pressure_plate","birch_pressure_plate","oak_pressure_plate","mushroom_stem","white_banner","orange_banner","magenta_banner","light_blue_banner","yellow_banner","lime_banner","pink_banner","gray_banner","light_gray_banner","cyan_banner","purple_banner","blue_banner","brown_banner","green_banner","red_banner","black_banner"]}}]}

# Flint and steel
data merge block 49 88 117 {Items:[{Slot:11b,id:"minecraft:sunflower",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"§6Sol Credit\"}",Lore:["§7A universal currency accepted by all shops"]},Enchantments:[{id:"minecraft:fortune",lvl:1}]}},{Slot:15b,id:"minecraft:sunflower",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"§6Sol Credit\"}",Lore:["§7A universal currency accepted by all shops"]},Enchantments:[{id:"minecraft:fortune",lvl:1}]}},{Slot:13b,id:"minecraft:flint_and_steel",Count:1b,tag:{display:{Name:"{\"text\":\"§dSupernova\"}",Lore:["§7A high-tech firestarter that brings the heat in battle","§7Lights up spawners in a flash!"]},Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}],HideFlags:31,CanDestroy:["minecraft:fire"],CanPlaceOn:["spawner","quartz_block","acacia_bark","acacia_door","acacia_fence","acacia_leaves","acacia_log","acacia_planks","acacia_sapling","acacia_slab","acacia_stairs","activator_rail","allium","andesite","anvil","azure_bluet","banner","barrier","beacon","white_bed","orange_bed","magenta_bed","light_blue_bed","yellow_bed","lime_bed","pink_bed","gray_bed","light_gray_bed","cyan_bed","purple_bed","blue_bed","brown_bed","green_bed","red_bed","black_bed","bedrock","beetroots","birch_bark","birch_door","birch_fence","birch_fence_gate","birch_leaves","birch_log","birch_planks","birch_sapling","birch_slab","birch_stairs","black_carpet","black_concrete","black_concrete_powder","black_glazed_terracotta","black_shulker_box","black_stained_glass","black_stained_glass_pane","black_terracotta","black_wool","blue_carpet","blue_concrete","blue_concrete_powder","blue_glazed_terracotta","blue_orchid","blue_shulker_box","blue_stained_glass","blue_stained_glass_pane","blue_terracotta","blue_wool","bone_block","bookshelf","brewing_stand","brick_slab","brick_stairs","bricks","brown_carpet","brown_concrete","brown_concrete_powder","brown_glazed_terracotta","brown_mushroom","brown_mushroom_block","brown_shulker_box","brown_stained_glass","brown_stained_glass_pane","brown_terracotta","brown_wool","cactus","cake","carrots","cauldron","chain_command_block","chest","chipped_anvil","chiseled_quartz","chiseled_red_sandstone","chiseled_sandstone","chiseled_stone_bricks","chorus_flower","chorus_plant","clay","coal_block","coal_ore","coarse_dirt","cobblestone","cobblestone_slab","cobblestone_stairs","cobblestone_wall","cobweb","cocoa","command_block","comparator","cracked_stone_bricks","crafting_table","creeper_head","cut_red_sandstone","cut_sandstone","cyan_carpet","cyan_concrete","cyan_concrete_powder","cyan_glazed_terracotta","cyan_shulker_box","cyan_stained_glass","cyan_stained_glass_pane","cyan_terracotta","cyan_wool","damaged_anvil","dandelion","dark_oak_bark","dark_oak_door","dark_oak_fence","dark_oak_fence_gate","dark_oak_leaves","dark_oak_log","dark_oak_planks","dark_oak_sapling","dark_oak_slab","dark_oak_stairs","dark_prismarine","daylight_detector","dead_bush","detector_rail","diamond_block","diamond_ore","diorite","dirt","dispenser","dragon_egg","dragon_head","dropper","emerald_block","emerald_ore","enchanting_table","end_gateway","end_portal","end_portal_frame","end_rod","end_stone","end_stone_bricks","ender_chest","farmland","fern","fire","flower_pot","flowing_lava","flowing_water","frosted_ice","furnace","glass","glass_pane","glowstone","gold_block","gold_ore","granite","grass","grass_block","grass_path","gravel","gray_carpet","gray_concrete","gray_concrete_powder","gray_glazed_terracotta","gray_shulker_box","gray_stained_glass","gray_stained_glass_pane","gray_terracotta","gray_wool","green_carpet","green_concrete","green_concrete_powder","green_glazed_terracotta","green_shulker_box","green_stained_glass","green_stained_glass_pane","green_terracotta","green_wool","hay_bale","heavy_weighted_pressure_plate","hopper","ice","infested_chiseled_stone_bricks","infested_cobblestone","infested_cracked_stone_bricks","infested_mossy_stone_bricks","infested_stone","infested_stone_bricks","iron_bars","iron_block","iron_door","iron_ore","iron_trapdoor","jack_o_lantern","jukebox","jungle_bark","jungle_door","jungle_fence","jungle_fence_gate","jungle_leaves","jungle_log","jungle_planks","jungle_sapling","jungle_slab","jungle_stairs","ladder","lapis_block","lapis_ore","large_fern","lava","lever","light_blue_carpet","light_blue_concrete","light_blue_concrete_powder","light_blue_glazed_terracotta","light_blue_shulker_box","light_blue_stained_glass","light_blue_stained_glass_pane","light_blue_terracotta","light_blue_wool","light_gray_carpet","light_gray_concrete","light_gray_concrete_powder","light_gray_glazed_terracotta","light_gray_shulker_box","light_gray_stained_glass","light_gray_stained_glass_pane","light_gray_terracotta","light_gray_wool","light_weighted_pressure_plate","lilac","lily_pad","lime_carpet","lime_concrete","lime_concrete_powder","lime_glazed_terracotta","lime_shulker_box","lime_stained_glass","lime_stained_glass_pane","lime_terracotta","lime_wool","magenta_carpet","magenta_concrete","magenta_concrete_powder","magenta_glazed_terracotta","magenta_shulker_box","magenta_stained_glass","magenta_stained_glass_pane","magenta_terracotta","magenta_wool","magma_block","melon_block","melon_plant","melon_stem","mob_spawner","mossy_cobblestone","mossy_cobblestone_wall","mossy_stone_bricks","mycelium","nether_brick_fence","nether_brick_slab","nether_brick_stairs","nether_bricks","nether_portal","nether_quartz_ore","nether_wart","nether_wart_block","netherrack","note_block","oak_bark","oak_door","oak_fence","oak_fence_gate","oak_leaves","oak_log","oak_planks","oak_sapling","oak_slab","oak_stairs","observer","obsidian","orange_carpet","orange_concrete","orange_concrete_powder","orange_glazed_terracotta","orange_shulker_box","orange_stained_glass","orange_stained_glass_pane","orange_terracotta","orange_tulip","orange_wool","oxeye_daisy","packed_ice","peony","petrified_oak_slab","pink_carpet","pink_concrete","pink_concrete_powder","pink_glazed_terracotta","pink_shulker_box","pink_stained_glass","pink_stained_glass_pane","pink_terracotta","pink_tulip","pink_wool","piston","piston_head","player_head","podzol","polished_andesite","polished_diorite","polished_granite","poppy","potatoes","powered_rail","prismarine","prismarine_bricks","carved_pumpkin","pumpkin_stem","purple_carpet","purple_concrete","purple_concrete_powder","purple_glazed_terracotta","purple_shulker_box","purple_stained_glass","purple_stained_glass_pane","purple_terracotta","purple_wool","purpur_block","purpur_pillar","purpur_slab","purpur_stairs","smooth_quartz","quartz_pillar","quartz_slab","quartz_stairs","rail","red_carpet","red_concrete","red_concrete_powder","red_glazed_terracotta","red_mushroom","red_mushroom_block","red_nether_bricks","red_sand","red_sandstone","red_sandstone_slab","red_sandstone_stairs","red_shulker_box","red_stained_glass","red_stained_glass_pane","red_terracotta","red_tulip","red_wool","redstone_block","redstone_lamp","redstone_ore","redstone_torch","redstone_wire","repeater","repeating_command_block","rose_bush","sand","sandstone","sandstone_slab","sandstone_stairs","sea_lantern","sign","skeleton_skull","slime_block","smooth_red_sandstone","smooth_sandstone","smooth_stone","snow","snow_block","soul_sand","sponge","spruce_bark","spruce_door","spruce_fence","spruce_fence_gate","spruce_leaves","spruce_log","spruce_planks","spruce_sapling","spruce_slab","spruce_stairs","sticky_piston","stone","stone_brick_slab","stone_brick_stairs","stone_bricks","stone_button","stone_pressure_plate","stone_slab","structure_block","structure_void","sugar_cane","sunflower","tall_grass","terracotta","tnt","torch","trapped_chest","tripwire","tripwire_hook","vine","wall_sign","wall_torch","water","wet_sponge","wheat","white_carpet","white_concrete","white_concrete_powder","white_glazed_terracotta","white_shulker_box","white_stained_glass","white_stained_glass_pane","white_terracotta","white_tulip","white_wool","wither_skeleton_skull","oak_button","spruce_button","acacia_button","birch_button","dark_oak_button","jungle_button","oak_trapdoor","spruce_trapdoor","acacia_trapdoor","dark_oak_trapdoor","birch_trapdoor","jungle_trapdoor","yellow_carpet","yellow_concrete","yellow_concrete_powder","yellow_glazed_terracotta","yellow_shulker_box","yellow_stained_glass","yellow_stained_glass_pane","yellow_terracotta","yellow_wool","zombie_head","redstone_wall_torch","dark_oak_pressure_plate","acacia_pressure_plate","jungle_pressure_plate","spruce_pressure_plate","birch_pressure_plate","oak_pressure_plate","mushroom_stem","white_banner","orange_banner","magenta_banner","light_blue_banner","yellow_banner","lime_banner","pink_banner","gray_banner","light_gray_banner","cyan_banner","purple_banner","blue_banner","brown_banner","green_banner","red_banner","black_banner"]}}]}

# Trident
data merge block 23 51 53 {Items:[{Slot:13b,id:"minecraft:trident",Count:1b,tag:{display:{Name:"{\"text\":\"§dMiniature Pushing Stick\"}",Lore:["§f6 Damage","§fReturns when Thrown","","§7Used by generals to push miniatures on a map","§7Outfitted with rocket thrusters!"]},Enchantments:[{id:"minecraft:loyalty",lvl:3}],Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"Damage",Slot:"mainhand",Amount:6,Operation:0,UUIDMost:42700,UUIDLeast:168669}],HideFlags:31}},{Slot:11b,id:"minecraft:sunflower",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"§6Sol Credit\"}",Lore:["§7A universal currency accepted by all shops"]},Enchantments:[{id:"minecraft:fortune",lvl:1}]}},{Slot:15b,id:"minecraft:sunflower",Count:1b,tag:{HideFlags:1,display:{Name:"{\"text\":\"§6Sol Credit\"}",Lore:["§7A universal currency accepted by all shops"]},Enchantments:[{id:"minecraft:fortune",lvl:1}]}}]}

#########
# Doors #
#########

clone 100 60 75 104 64 75 76 69 93
clone 100 60 75 104 64 75 76 69 12

##############
# Robot NPCs #
##############
tag @e[name="..."] add hidename
tag @e[name="Boss"] add hidename
tag @e[name="Armor Stand"] add hidename

############
# Spawners #
############

# Sol Corp Security (skeleton w/ iron armor & baton)
setblock 83 69 52 minecraft:spawner{SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,Silent:1b,Health:10f,CustomName:"{\"text\":\"Sol Corp Security\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Baton\",\"color\":\"aqua\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:8290424}}},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8290424}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"48eede21-6c13-8071-f748-c18b597cb260",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTU3NDI0NzVlZTVhZDViZWYzOThiYjQxOTQzYTUxNWRjYWE3N2RjZDcyMjI4YjUxOWVmNjljM2FhODZjNCJ9fX0="}]}}}}],Attributes:[{Name:generic.maxHealth,Base:10}]}} destroy
clone 83 69 52 83 69 52 111 71 52
clone 83 69 52 83 69 52 80 91 27
clone 83 69 52 83 69 52 80 91 77
clone 83 69 52 83 69 52 75 96 55
clone 83 69 52 83 69 52 -62 56 88
clone 83 69 52 83 69 52 57 56 117
clone 83 69 52 83 69 52 79 81 8
clone 83 69 52 83 69 52 117 81 37
clone 83 69 52 83 69 52 -57 81 17
clone 83 69 52 83 69 52 -17 70 91
clone 83 69 52 83 69 52 -17 70 75
clone 83 69 52 83 69 52 -28 70 103
clone 83 69 52 83 69 52 -28 70 119
clone 83 69 52 83 69 52 -27 75 60
clone 83 69 52 83 69 52 17 70 72
clone 83 69 52 83 69 52 17 70 94
clone 83 69 52 83 69 52 25 72 96
clone 83 69 52 83 69 52 34 70 73
clone 83 69 52 83 69 52 115 78 52
clone 83 69 52 83 69 52 -19 73 62
clone 83 69 52 83 69 52 7 82 -96
clone 83 69 52 83 69 52 48 82 -86
clone 83 69 52 83 69 52 28 82 -58
clone 83 69 52 83 69 52 -38 81 -24
clone 83 69 52 83 69 52 -38 81 -51
clone 83 69 52 83 69 52 -84 81 -51
clone 83 69 52 83 69 52 -84 81 -24
clone 83 69 52 83 69 52 -1 70 94
clone 83 69 52 83 69 52 -1 70 72

#Office Drone (zombie w/ iron armor)
setblock 105 77 61 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:zombie",PersistenceRequired:0b,Silent:1b,Health:14f,CustomName:"{\"text\":\"Office Drone\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:paper",Count:1b,tag:{display:{Name:"{\"text\":\"Paperwork\",\"color\":\"aqua\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"e822959d-922c-432c-9108-e8554b741f4b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzk3MjhmNzc2MzZlYWU5MjdlMTE4MDc2ZTA5N2I3OWNlNWQ4OTdlZWNlOTRhMWU0YTEyMjcyNzNiMDJmMWNiZiJ9fX0="}]}}}}],Attributes:[{Name:generic.maxHealth,Base:14}]}} destroy
clone 105 77 61 105 77 61 78 76 29
clone 105 77 61 105 77 61 78 77 71
clone 105 77 61 105 77 61 105 77 43
clone 105 77 61 105 77 61 76 89 52
clone 105 77 61 105 77 61 76 97 21
clone 105 77 61 105 77 61 76 97 83

#Mechapod Mini (cave spider)
setblock 79 120 55 minecraft:spawner{SpawnRange:1,SpawnData:{id:"minecraft:cave_spider",PersistenceRequired:0b,Health:7f,CustomName:"{\"text\":\"Mechapod Mini\",\"color\":\"aqua\"}",Attributes:[{Name:generic.maxHealth,Base:7}]}} replace
clone 79 120 55 79 120 55 77 120 49

#Rocket Scientist (slow and powerful melee mob that releases a firework when killed)
setblock 87 48 89 minecraft:spawner{SpawnCount:5,RequiredPlayerRange:30,MaxNearbyEntities:10,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,Silent:1b,Tags:["deathEffect"],CustomName:"{\"text\":\"Rocket Scientist\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:firework_rocket",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:1}]}},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:0,Patterns:[{Color:14,Pattern:"dls"}]}}}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"372b610d-f067-4688-87d1-6c044f47b12b",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzAyZjQ4ZjM0ZDIyZGVkNzQwNGY3NmU4YTEzMmFmNWQ3OTE5YzhkY2Q1MWRmNmU3YTg1ZGRmYWM4NWFiIn19fQ=="}]}}}}],ActiveEffects:[{Id:12b,Amplifier:1b,Duration:9999,ShowParticles:0b}],Attributes:[{Name:generic.movementSpeed,Base:0.2},{Name:generic.attackDamage,Base:10}]}} destroy
clone 87 48 89 87 48 89 70 45 67
clone 87 48 89 87 48 89 87 45 40
clone 87 48 89 87 48 89 73 48 17
clone 87 48 89 87 48 89 83 48 17
clone 87 48 89 87 48 89 84 51 -5
clone 87 48 89 87 48 89 44 53 8
clone 87 48 89 87 48 89 32 51 18
clone 87 48 89 87 48 89 28 211 19
clone 87 48 89 87 48 89 2 51 37
clone 87 48 89 87 48 89 71 45 26

#Firewall (regular ol' blaze)
setblock 81 41 52 minecraft:spawner{SpawnData:{id:"minecraft:blaze",PersistenceRequired:0b,Health:14f,CustomName:"{\"text\":\"Firewall\",\"color\":\"gold\"}",Attributes:[{Name:generic.maxHealth,Base:14}]}} destroy
clone 81 41 52 81 41 52 54 56 -7
clone 81 41 52 81 41 52 14 53 8
clone 81 41 52 81 41 52 2 53 8
clone 81 41 52 81 41 52 21 9 62
clone 81 41 52 81 41 52 -14 10 66
clone 81 41 52 81 41 52 2 9 39
clone 81 41 52 81 41 52 6 9 35
clone 81 41 52 81 41 52 15 9 76
clone 81 41 52 81 41 52 0 9 76
clone 81 41 52 81 41 52 8 22 -124
clone 81 41 52 81 41 52 27 9 -111
clone 81 41 52 81 41 52 -3 5 -58
clone 81 41 52 81 41 52 73 5 -89
clone 81 41 52 81 41 52 45 7 -83
clone 81 41 52 81 41 52 55 6 -93
clone 81 41 52 81 41 52 44 51 37
clone 81 41 52 81 41 52 19 211 28
clone 81 41 52 81 41 52 53 76 117
clone 81 41 52 81 41 52 45 76 117

#Reanimated Bones (swarming floating skulls)
setblock -53 53 70 minecraft:spawner{SpawnCount:5,SpawnRange:2,MinSpawnDelay:100,MaxSpawnDelay:100,SpawnData:{id:"minecraft:zombie",PersistenceRequired:0b,Silent:1b,Health:7f,IsBaby:0b,CustomName:"{\"text\":\"Reanimated Bones\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bone",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:bone",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"e775f704-272b-4503-8cc4-015e60ac34bd",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODYzZmQ3ODIyMmQ1OTg4YzZiZTFjYzlmYTk2ZTg1Mjg5MTViYjY5NzQ2NDY0ZDIzOGY5MzZlYmViYjIzYzUyIn19fQ=="}]}}}}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:9999,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:7}]}} destroy
clone -53 53 70 -53 53 70 -65 47 48
clone -53 53 70 -53 53 70 -82 47 48
clone -53 53 70 -53 53 70 -116 47 48
clone -53 53 70 -53 53 70 -133 47 48
clone -53 53 70 -53 53 70 -87 53 34
clone -53 53 70 -53 53 70 -96 61 41
clone -53 53 70 -53 53 70 -76 61 63
clone -53 53 70 -53 53 70 -108 59 11
clone -53 53 70 -53 53 70 -96 59 0
clone -53 53 70 -53 53 70 -67 71 42
clone -53 53 70 -53 53 70 -67 71 62
clone -53 53 70 -53 53 70 -183 1 62
clone -53 53 70 -53 53 70 -199 1 82
clone -53 53 70 -53 53 70 -243 1 105
clone -53 53 70 -53 53 70 -206 1 31
clone -53 53 70 -53 53 70 -5 211 28

#Lunatic Acolyte (warping melee fighter w/ knockback book)
setblock -84 83 42 minecraft:spawner{SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,Silent:1b,Health:14f,ActiveEffects:[{Id:28b,Amplifier:1b,Duration:9999,ShowParticles:0b}],Tags:["Lunatic"],CustomName:"{\"text\":\"Lunatic Acolyte\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:book",Count:1b,tag:{display:{Name:"{\"text\":\"Ancient Tome\",\"color\":\"aqua\"}"},Enchantments:[{id:"minecraft:knockback",lvl:2}]}},{}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"7d2ac138-ce81-435c-be9d-93d6957b5f1d",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMDQxNjQ2YzAzZjhiNGNkYmJmODFmNzE2NGRkNjNhMjljOTYzYTZjNmNlYmZlMWNhZjE5YTJlZTkyYyJ9fX0="}]}}}}],Attributes:[{Name:generic.maxHealth,Base:8}]}} destroy 
clone -84 83 42 -84 83 42 -84 83 62
clone -84 83 42 -84 83 42 -51 71 42
clone -84 83 42 -84 83 42 -51 71 62

#Lunatic Priest (warping ranged fighter)
setblock -84 71 52 minecraft:spawner{SpawnRange:1,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,Silent:1b,ActiveEffects:[{Id:28b,Amplifier:1b,Duration:9999,ShowParticles:0b}],Health:14f,Tags:["Lunatic"],CustomName:"{\"text\":\"Lunatic Priest\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:"{\"text\":\"High Tide\",\"color\":\"aqua\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"d782253c-63b7-45d5-b179-7a0e5601ed41",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjIyZTNhNTY5ZThkNTgxNDM3YzUwM2UyYWQxZDRiNTkxYmNiODI5MWE3MWVmN2IzNzM4OGVlYTNiMDhlNzIifX19"}]}}}}],Attributes:[{Name:generic.maxHealth,Base:16}]}} destroy
clone -84 71 52 -84 71 52 -84 97 52
clone -84 71 52 -84 71 52 -67 87 52
clone -84 71 52 -84 71 52 -59 87 52

#Ethereal Horror (ghast with 1 health)
setblock -48 94 39 minecraft:spawner{SpawnData:{id:"minecraft:ghast",PersistenceRequired:0b,Health:1f,CustomName:"{\"text\":\"Ethereal Horror\",\"color\":\"aqua\"}",Attributes:[{Name:generic.maxHealth,Base:1}]}} destroy
clone -48 94 39 -48 94 39 -48 94 65
clone -48 94 39 -48 94 39 -225 33 33
clone -48 94 39 -48 94 39 -246 8 13
clone -48 94 39 -48 94 39 -228 20 76
clone -48 94 39 -48 94 39 -240 51 65
clone -48 94 39 -48 94 39 -247 68 49
clone -48 94 39 -48 94 39 -61 86 -29
clone -48 94 39 -48 94 39 -61 92 -45

#Lost Soul (regular ol' skeleton)
setblock -99 47 48 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,CustomName:"{\"text\":\"Lost Soul\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}]}} destroy
clone -99 47 48 -99 47 48 -68 63 44
clone -99 47 48 -99 47 48 -80 61 10
clone -99 47 48 -99 47 48 -220 13 36
clone -99 47 48 -99 47 48 -235 6 73
clone -99 47 48 -99 47 48 -249 20 65
clone -99 47 48 -99 47 48 -251 12 48
clone -99 47 48 -99 47 48 -233 18 35
clone -99 47 48 -99 47 48 -225 21 52
clone -99 47 48 -99 47 48 -235 43 45
clone -99 47 48 -99 47 48 -245 35 53
clone -99 47 48 -99 47 48 -221 1 81
clone -99 47 48 -99 47 48 -96 61 63
clone -99 47 48 -99 47 48 -12 211 21

#Explosive Critic (melee mob that drops tnt when killed)
setblock -51 63 -55 minecraft:spawner{SpawnCount:5,MinSpawnDelay:150,MaxSpawnDelay:150,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,Silent:1b,CustomNameVisible:1b,Health:11f,Tags:["deathEffect"],CustomName:"{\"text\":\"Explosive Critic\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:tnt",Count:1b},{id:"minecraft:redstone_torch",Count:1b}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"6c8e5e83-3ff1-4012-a294-4baea0e34dbd",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzBkZjI2ZTc0NzUyZDU0YTk0Zjg4NWQxNzk5ODU5YjZjYTRhZGIwMTA5ODFmNTIyMDk4ZDNlMzFlMTU3NCJ9fX0="}]}}}}],Attributes:[{Name:generic.maxHealth,Base:11}]}} destroy
clone -51 63 -55 -51 63 -55 -71 63 -55
clone -51 63 -55 -51 63 -55 -71 63 -20
clone -51 63 -55 -51 63 -55 -51 63 -20
clone -51 63 -55 -51 63 -55 -61 65 -1
clone -51 63 -55 -51 63 -55 -74 39 -76
clone -51 63 -55 -51 63 -55 -48 39 -76
clone -51 63 -55 -51 63 -55 -51 72 -55
clone -51 63 -55 -51 63 -55 -71 72 -55
clone -51 63 -55 -51 63 -55 -71 72 -20
clone -51 63 -55 -51 63 -55 -51 72 -20

#Rusty Outlaw (very fast melee mob)
setblock -77 39 -32 minecraft:spawner{RequiredPlayerRange:30,MaxNearbyEntities:5,SpawnData:{id:"minecraft:husk",PersistenceRequired:0b,Silent:1b,Health:12f,CustomName:"{\"text\":\"Rusty Outlaw\",\"color\":\"aqua\"}",ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7036495}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7036495}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7036495}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"f0c8d630-095f-4b71-9323-3c493e8d6a65",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODI1MWRjMzY2ZDJiMmVkYjNiMDM1NDRlOGI5OGRiODVjYjNkNjEwNjQ0MGFlZjI3ZWE3OWI5ZjM5Y2QxNzhiIn19fQ=="}]}}}}],Attributes:[{Name:generic.maxHealth,Base:16},{Name:generic.followRange,Base:50},{Name:generic.movementSpeed,Base:0.3}]}} destroy
clone -77 39 -32 -77 39 -32 -77 39 -49
clone -77 39 -32 -77 39 -32 -61 39 -78
clone -77 39 -32 -77 39 -32 -44 39 -49
clone -77 39 -32 -77 39 -32 -52 69 -77
clone -77 39 -32 -77 39 -32 -19 69 -72
clone -77 39 -32 -77 39 -32 10 69 -74
clone -77 39 -32 -77 39 -32 47 69 -78
clone -77 39 -32 -77 39 -32 37 69 -70
clone -77 39 -32 -77 39 -32 -107 81 -12
clone -77 39 -32 -77 39 -32 -107 81 28
clone -77 39 -32 -77 39 -32 -82 69 88
clone -77 39 -32 -77 39 -32 -49 66 115

#Synthetic Swarmer (regular 'ol silverfish)
setblock -23 35 11 minecraft:spawner{SpawnCount:5,SpawnRange:2,SpawnData:{id:"minecraft:silverfish",PersistenceRequired:0b,Health:7f,CustomName:"{\"text\":\"Synthetic Swarmer\",\"color\":\"aqua\"}",Attributes:[{Name:generic.maxHealth,Base:7},{Name:generic.movementSpeed,Base:0.17}]}} destroy
clone -23 35 11 -23 35 11 -32 27 3
clone -23 35 11 -23 35 11 -32 11 4
clone -23 35 11 -23 35 11 -57 11 45
clone -23 35 11 -23 35 11 -46 20 62
clone -23 35 11 -23 35 11 34 25 53
clone -23 35 11 -23 35 11 40 29 63
clone -23 35 11 -23 35 11 -44 32 64
clone -23 35 11 -23 35 11 -35 24 88
clone -23 35 11 -23 35 11 33 17 54
clone -23 35 11 -23 35 11 -6 214 -8
clone -23 35 11 -23 35 11 41 58 96

#Crumbling Golem (slow stone golem that releases silverfish when hit)
setblock -39 19 6 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,Silent:1b,Tags:["Golem"],Health:20f,CustomName:"{\"text\":\"Crumbling Golem\",\"color\":\"aqua\"}",ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:6908265}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:6908265}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:6908265}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"146e08f3-8cbe-49b0-b422-0f04c3a60b7a",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDA1ZWU5YzY0ZDRiNjYyMTE5ZjVjNTczNTU2MjMyNzQwMDE4NTgyMjM5YjA5OTNlZTZjYTMyNTJmZmVlMWY2NyJ9fX0="}]}}}}],Attributes:[{Name:generic.maxHealth,Base:20},{Name:generic.movementSpeed,Base:0.15}]}} destroy
clone -39 19 6 -39 19 6 -5 15 95
clone -39 19 6 -39 19 6 21 15 95
clone -39 19 6 -39 19 6 -13 15 43
clone -39 19 6 -39 19 6 3 19 1

#Avant Guard (skeleton)
setblock -26 19 93 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:skeleton",PersistenceRequired:0b,Health:16f,CustomName:"{\"text\":\"Avant Guard\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:"{\"text\":\"Originality\",\"color\":\"aqua\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7226647}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7226647}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7226647}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"b3bb983b-23d1-4e6e-b276-b2f83663c6d9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTQzNzllYTNlODFkOWQzYjk5Yzk5YmMzNzIyMzRkMmJhYjQ5MzFlNzU4NGVkMzc5N2M0ZWE4OGU3ZGQ4NmExNSJ9fX0="}]}}}}],Attributes:[{Name:generic.maxHealth,Base:16}]}} destroy
clone -26 19 93 -26 19 93 8 15 127
clone -26 19 93 -26 19 93 1 23 126
clone -26 19 93 -26 19 93 15 23 126
clone -26 19 93 -26 19 93 47 28 89
clone -26 19 93 -26 19 93 35 10 42
clone -26 19 93 -26 19 93 46 23 35
clone -26 19 93 -26 19 93 2 16 36
clone -26 19 93 -26 19 93 -46 22 35
clone -26 19 93 -26 19 93 -45 39 57
clone -26 19 93 -26 19 93 -27 30 88
clone -26 19 93 -26 19 93 12 26 11
clone -26 19 93 -26 19 93 -8 214 -6
clone -26 19 93 -26 19 93 -102 81 8
clone -26 19 93 -26 19 93 -102 81 40
clone -26 19 93 -26 19 93 -102 81 -24

#Creeping Vines (very slow creeper w/ slow falling)
setblock 68 89 -63 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:creeper",PersistenceRequired:0b,CustomName:"{\"text\":\"Creeping Vines\",\"color\":\"aqua\"}",ActiveEffects:[{Id:28b,Amplifier:1b,Duration:9999,ShowParticles:0b}],Attributes:[{Name:generic.movementSpeed,Base:0.15}]}} destroy
clone 68 89 -63 68 89 -63 96 89 -63
clone 68 89 -63 68 89 -63 96 89 -15
clone 68 89 -63 68 89 -63 68 89 -15
clone 68 89 -63 68 89 -63 82 93 -47
clone 68 89 -63 68 89 -63 82 93 -31
clone 68 89 -63 68 89 -63 82 68 -41

#Mechapod (regular ol' spider)
setblock 80 84 -39 minecraft:spawner{SpawnData:{id:"minecraft:spider",PersistenceRequired:0b,Health:14f,CustomName:"{\"text\":\"Mechapod\",\"color\":\"aqua\"}",Attributes:[{Name:generic.maxHealth,Base:14}]}} destroy
clone 80 84 -39 80 84 -39 92 67 -57
clone 80 84 -39 80 84 -39 71 67 -50
clone 80 84 -39 80 84 -39 95 67 -31
clone 80 84 -39 80 84 -39 102 52 -31
clone 80 84 -39 80 84 -39 80 50 -52
clone 80 84 -39 80 84 -39 70 53 -22
clone 80 84 -39 80 84 -39 80 51 -26
clone 80 84 -39 80 84 -39 92 51 -29
clone 80 84 -39 80 84 -39 94 49 -39
clone 80 84 -39 80 84 -39 85 47 -47
clone 80 84 -39 80 84 -39 75 51 -37
clone 80 84 -39 80 84 -39 103 92 -39

#Mechapod Prime (tougher spider that sets you on fire)
setblock 97 36 -17 minecraft:spawner{SpawnData:{id:"minecraft:spider",PersistenceRequired:0b,Health:21f,CustomName:"{\"text\":\"Mechapod Prime\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:stick",Count:1b,tag:{display:{Name:"{\"text\":\"Laser Fangs\",\"color\":\"aqua\"}"},Enchantments:[{id:"minecraft:fire_aspect",lvl:1}]}},{}],ActiveEffects:[{Id:12b,Amplifier:1b,Duration:9999,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:21}]}} destroy
clone 97 36 -17 97 36 -17 109 34 -2
clone 97 36 -17 97 36 -17 122 29 -22
clone 97 36 -17 97 36 -17 115 23 -45
clone 97 36 -17 97 36 -17 105 22 -57
clone 97 36 -17 97 36 -17 74 29 -37
clone 97 36 -17 97 36 -17 66 28 -44
clone 97 36 -17 97 36 -17 58 28 -32
clone 97 36 -17 97 36 -17 42 22 -10

#Piggyback Mechapod (cave spider riding regular spider)
setblock 66 28 -34 minecraft:spawner{SpawnData:{id:"minecraft:spider",PersistenceRequired:0b,Health:14f,Passengers:[{id:"minecraft:cave_spider",Health:14f,CustomName:"{\"text\":\"Piggyback Mechapod\",\"color\":\"aqua\"}",Attributes:[{Name:generic.maxHealth,Base:14}]}],CustomName:"{\"text\":\"Mechapod\",\"color\":\"aqua\"}",Attributes:[{Name:generic.maxHealth,Base:14}]}} destroy
clone 66 28 -34 66 28 -34 74 29 -41
clone 66 28 -34 66 28 -34 58 28 -46
clone 66 28 -34 66 28 -34 40 14 -44

#Ancient War Drone (drowned w/ guardian head)
setblock 8 24 -33 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:drowned",PersistenceRequired:0b,CanPickUpLoot:0b,Health:14f,IsBaby:0b,Passengers:[{id:"minecraft:guardian",Health:7f,CustomName:"{\"text\":\"Ancient War Drone\",\"color\":\"aqua\"}",Attributes:[{Name:generic.maxHealth,Base:7}]}],CustomName:"{\"text\":\"Ancient War Drone\",\"color\":\"aqua\"}",ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"cb7db81b-ef96-85fe-541e-546000a82260",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTg5OTI4YjU4YTg3ZWMxODRmMTY4NjkxNTQ0Yjc4YmM2MmM5YWY0ZGY3ZmFlYTIxOTQ0YmIzMjFlNWFmNjEyIn19fQ=="}]}}}}],Attributes:[{Name:generic.maxHealth,Base:14},{Name:generic.movementSpeed,Base:0.3}]}} destroy
clone 8 24 -33 8 24 -33 -12 9 -89
clone 8 24 -33 8 24 -33 19 5 -58
clone 8 24 -33 8 24 -33 28 9 -89
clone 8 24 -33 8 24 -33 -9 9 -66
clone 8 24 -33 8 24 -33 25 9 -66

#Ancient Defender (drowned w/ shields and shulker head)
setblock 5 19 -89 minecraft:spawner{SpawnRange:2,SpawnData:{id:"minecraft:drowned",PersistenceRequired:0b,CanPickUpLoot:0b,Health:14f,IsBaby:0b,Passengers:[{id:"minecraft:shulker",Health:7f,AttachFace:0b,CustomName:"{\"text\":\"Ancient Defender\",\"color\":\"aqua\"}",Attributes:[{Name:generic.maxHealth,Base:7}]}],CustomName:"{\"text\":\"Ancient Defender\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:0,Patterns:[{Color:14,Pattern:"flo"},{Color:0,Pattern:"gru"}]}}},{id:"minecraft:shield",Count:1b,tag:{BlockEntityTag:{Base:0,Patterns:[{Color:14,Pattern:"flo"},{Color:0,Pattern:"gru"}]}}}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:iron_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:iron_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"cb7db81b-ef96-85fe-541e-546000a82260",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTg5OTI4YjU4YTg3ZWMxODRmMTY4NjkxNTQ0Yjc4YmM2MmM5YWY0ZGY3ZmFlYTIxOTQ0YmIzMjFlNWFmNjEyIn19fQ=="}]}}}}],Attributes:[{Name:generic.maxHealth,Base:14},{Name:generic.movementSpeed,Base:0.2}]}} destroy
clone 5 19 -89 5 19 -89 11 19 -89
clone 5 19 -89 5 19 -89 11 19 -77
clone 5 19 -89 5 19 -89 5 19 -77
clone 5 19 -89 5 19 -89 5 19 -65
clone 5 19 -89 5 19 -89 11 19 -65
clone 5 19 -89 5 19 -89 11 19 -53
clone 5 19 -89 5 19 -89 5 19 -53

#Mechapod Spammer (spiders with low health)
setblock 19 209 -11 minecraft:spawner{SpawnCount:3,SpawnRange:2,Delay:60,MinSpawnDelay:60,MaxSpawnDelay:60,MaxNearbyEntities:10,RequiredPlayerRange:30,SpawnData:{id:"minecraft:spider",PersistenceRequired:0b,Health:4f,CustomName:"{\"text\":\"Mechapod\",\"color\":\"aqua\"}",Attributes:[{Name:generic.maxHealth,Base:4}]}} destroy
clone 19 209 -11 19 209 -11 27 209 -3
clone 19 209 -11 19 209 -11 -49 21 -79
clone 19 209 -11 19 209 -11 -49 15 -89
clone 19 209 -11 19 209 -11 -49 9 -59
clone 19 209 -11 19 209 -11 -49 15 -29

# Lingering Hatred (fast zombies w/ knockback immunity)
setblock -3 11 -218 minecraft:spawner{SpawnCount:1,SpawnRange:4,Delay:0,MinSpawnDelay:100,MaxSpawnDelay:100,MaxNearbyEntities:4,RequiredPlayerRange:30,SpawnData:{id:"minecraft:zombie",Silent:1b,CustomName:"{\"text\":\"Lingering Hatred\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:"{\"text\":\"Phaseblade\",\"color\":\"aqua\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:99999,ShowParticles:0b}],Attributes:[{Name:generic.knockbackResistance,Base:1.0},{Name:generic.movementSpeed,Base:0.3}]}} destroy
clone -3 11 -218 -3 11 -218 -23 10 -194
clone -3 11 -218 -3 11 -218 -45 10 -199
clone -3 11 -218 -3 11 -218 -72 8 -221
clone -3 11 -218 -3 11 -218 -15 10 -245
clone -3 11 -218 -3 11 -218 17 8 -246
clone -3 11 -218 -3 11 -218 45 10 -221
clone -3 11 -218 -3 11 -218 35 10 -198
clone -3 11 -218 -3 11 -218 94 9 -303
clone -3 11 -218 -3 11 -218 31 9 -353
clone -3 11 -218 -3 11 -218 -36 9 -361
clone -3 11 -218 -3 11 -218 -55 7 -278

# Lingering Hatred (snow golems)
setblock -12 10 -204 minecraft:spawner{SpawnCount:1,SpawnRange:4,Delay:0,MinSpawnDelay:100,MaxSpawnDelay:100,MaxNearbyEntities:4,RequiredPlayerRange:30,SpawnData:{id:"minecraft:snow_golem",Health:20f,Silent:1b,Pumpkin:0b,CustomName:"{\"text\":\"Lingering Hatred\",\"color\":\"aqua\"}",ActiveEffects:[{Id:14b,Amplifier:1b,Duration:99999,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:20}]}} destroy
clone -12 10 -204 -12 10 -204 38 10 -219
clone -12 10 -204 -12 10 -204 43 10 -249
clone -12 10 -204 -12 10 -204 6 7 -230
clone -12 10 -204 -12 10 -204 -33 9 -230
clone -12 10 -204 -12 10 -204 -66 9 -245
clone -12 10 -204 -12 10 -204 -16 8 -352
clone -12 10 -204 -12 10 -204 1 8 -376
clone -12 10 -204 -12 10 -204 37 10 -338
clone -12 10 -204 -12 10 -204 63 10 -290

# Lingering Hatred (iron golems)
setblock 19 10 -211 minecraft:spawner{SpawnCount:1,SpawnRange:4,Delay:0,MinSpawnDelay:100,MaxSpawnDelay:100,MaxNearbyEntities:4,RequiredPlayerRange:30,SpawnData:{id:"minecraft:iron_golem",Health:50f,Silent:1b,PlayerCreated:0b,CustomName:"{\"text\":\"Lingering Hatred\",\"color\":\"aqua\"}",ActiveEffects:[{Id:14b,Amplifier:1b,Duration:99999,ShowParticles:0b}],Attributes:[{Name:generic.maxHealth,Base:50}]}} destroy
clone 19 10 -211 19 10 -211 23 10 -196
clone 19 10 -211 19 10 -211 -20 10 -185
clone 19 10 -211 19 10 -211 -31 9 -221
clone 19 10 -211 19 10 -211 79 9 -213
clone 19 10 -211 19 10 -211 -84 9 -283
clone 19 10 -211 19 10 -211 -59 8 -339
clone 19 10 -211 19 10 -211 -10 8 -350
clone 19 10 -211 19 10 -211 57 8 -364

# Lingering Hatred (skeleton)
setblock 13 10 -208 minecraft:spawner{SpawnCount:1,SpawnRange:4,Delay:0,MinSpawnDelay:100,MaxSpawnDelay:100,MaxNearbyEntities:4,RequiredPlayerRange:30,SpawnData:{id:"minecraft:skeleton",Silent:1b,CustomName:"{\"text\":\"Lingering Hatred\",\"color\":\"aqua\"}",HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:"{\"text\":\"Laser Bow\",\"color\":\"aqua\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:1}]}},{}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:99999,ShowParticles:0b}]}} destroy
clone 13 10 -208 13 10 -208 -2 10 -200
clone 13 10 -208 13 10 -208 -30 10 -186
clone 13 10 -208 13 10 -208 -65 8 -213
clone 13 10 -208 13 10 -208 -36 9 -225
clone 13 10 -208 13 10 -208 -9 10 -245
clone 13 10 -208 13 10 -208 12 8 -246
clone 13 10 -208 13 10 -208 39 10 -255
clone 13 10 -208 13 10 -208 72 9 -218
clone 13 10 -208 13 10 -208 42 10 -200
clone 13 10 -208 13 10 -208 28 10 -204
clone 13 10 -208 13 10 -208 96 9 -239
clone 13 10 -208 13 10 -208 99 9 -246
clone 13 10 -208 13 10 -208 64 10 -295
clone 13 10 -208 13 10 -208 47 8 -367
clone 13 10 -208 13 10 -208 -13 8 -346
clone 13 10 -208 13 10 -208 -83 9 -289
clone 13 10 -208 13 10 -208 -52 7 -273


execute as @e[type=item_frame] run data merge entity @s {Invulnerable:1b}
execute as @e[type=painting] run data merge entity @s {Invulnerable:1b}