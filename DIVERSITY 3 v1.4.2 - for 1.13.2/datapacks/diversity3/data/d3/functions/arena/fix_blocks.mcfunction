####################################################################
# THIS FUNCTION WAS MADE BY QMAGNET
# DECEMBER 27 2018 / APRIL 3 2019
# GIVE MAP MAKERS THE CREDIT THEY DESERVE
# YOUTUBERS, TELL YOUR VIEWERS ABOUT OUR CHANNELS
# YouTube -> https://youtube.com/theqmagnet
# Twitter -> https://twitter.com/theqmagnet
####################################################################

# SECRET AREA BELOW LION
execute if block 7 53 1913 stone_button[powered=true] unless block 4 1 78 cracked_stone_bricks run setblock 4 1 78 cracked_stone_bricks
execute if block 7 53 1914 stone_button[powered=true] unless block 3 1 78 cracked_stone_bricks run setblock 3 1 78 cracked_stone_bricks
execute if block -7 53 1914 stone_button[powered=true] unless block 2 1 78 cracked_stone_bricks run setblock 2 1 78 cracked_stone_bricks
execute if block -7 53 1913 stone_button[powered=true] unless block 1 1 78 cracked_stone_bricks run setblock 1 1 78 cracked_stone_bricks

execute unless block 4 1 78 cracked_stone_bricks unless block 0 43 1921 redstone_block run setblock 0 43 1921 redstone_block
execute unless block 3 1 78 cracked_stone_bricks unless block 0 43 1921 redstone_block run setblock 0 43 1921 redstone_block
execute unless block 2 1 78 cracked_stone_bricks unless block 0 43 1921 redstone_block run setblock 0 43 1921 redstone_block
execute unless block 1 1 78 cracked_stone_bricks unless block 0 43 1921 redstone_block run setblock 0 43 1921 redstone_block

execute unless block 4 1 78 cracked_stone_bricks unless block 0 47 1917 redstone_block run setblock 0 47 1917 redstone_block
execute unless block 3 1 78 cracked_stone_bricks unless block 0 47 1917 redstone_block run setblock 0 47 1917 redstone_block
execute unless block 2 1 78 cracked_stone_bricks unless block 0 47 1917 redstone_block run setblock 0 47 1917 redstone_block
execute unless block 1 1 78 cracked_stone_bricks unless block 0 47 1917 redstone_block run setblock 0 47 1917 redstone_block

execute if block 4 1 78 cracked_stone_bricks if block 3 1 78 cracked_stone_bricks if block 2 1 78 cracked_stone_bricks if block 1 1 78 cracked_stone_bricks unless block 0 43 1921 clay run setblock 0 43 1921 clay
execute if block 4 1 78 cracked_stone_bricks if block 3 1 78 cracked_stone_bricks if block 2 1 78 cracked_stone_bricks if block 1 1 78 cracked_stone_bricks unless block 0 47 1917 clay run setblock 0 47 1917 clay


# BACK STAIRS
execute unless block -21 52 1885 iron_bars[east=false,west=false,north=false,south=false] run setblock -21 52 1885 iron_bars[east=false,west=false,north=false,south=false]
execute unless block -21 50 1887 iron_bars[east=false,west=false,north=false,south=false] run setblock -21 50 1887 iron_bars[east=false,west=false,north=false,south=false]


# TRAINING CHAIRS
fill -9 53 1879 -9 54 1879 spruce_trapdoor[facing=north,half=bottom,open=true] replace oak_trapdoor
fill -9 53 1883 -9 54 1883 spruce_trapdoor[facing=south,half=bottom,open=true] replace oak_trapdoor


# TRAINING FURNACE CHIMNEY
fill -12 54 1880 -12 55 1880 cobblestone_wall[east=false,west=false,north=false,south=false] replace cobblestone_wall[east=false,west=true,north=false,south=false]
execute if block -12 56 1880 cobblestone_wall[east=true,west=true,north=false,south=false] run setblock -12 56 1880 cobblestone_wall[east=true,west=false,north=false,south=false]


# STATUES
#execute unless block -7 55 1914 cobblestone_wall[east=false,west=false,north=false,south=false] run setblock -7 55 1914 cobblestone_wall[east=false,west=false,north=false,south=false]
#execute unless block -7 55 1916 cobblestone_wall[east=false,west=false,north=false,south=false] run setblock -7 55 1916 cobblestone_wall[east=false,west=false,north=false,south=false]
#execute unless block -7 55 1915 cobblestone_wall[east=false,west=false,north=false,south=false] run setblock -7 55 1915 cobblestone_wall[east=false,west=false,north=false,south=false]

#execute unless block -7 56 1914 iron_bars[east=false,west=false,north=false,south=false] run setblock -7 56 1914 iron_bars[east=false,west=false,north=false,south=false]
#execute unless block -7 56 1916 iron_bars[east=false,west=false,north=false,south=false] run setblock -7 56 1916 iron_bars[east=false,west=false,north=false,south=false]
#execute unless block -7 56 1915 iron_bars[east=false,west=false,north=false,south=false] run setblock -7 56 1915 iron_bars[east=false,west=false,north=false,south=false]


# STATUE BOW
execute unless block 8 53 1915 cobblestone_wall[east=false,west=true,north=false,south=false] run setblock 8 53 1915 cobblestone_wall[east=false,west=true,north=false,south=false]
execute unless block 8 52 1915 iron_bars[east=false,west=false,north=false,south=false] run setblock 8 52 1915 iron_bars[east=false,west=false,north=false,south=false]

# STATUE SWORD
execute unless block -8 52 1915 cobblestone_wall[east=true,west=false,north=false,south=false] run setblock -8 52 1915 cobblestone_wall[east=true,west=false,north=false,south=false]

# GIFT BOOK BLOCKS
execute if entity @e[scores={ArenaRound=0}] run fill 0 47 1952 0 48 1952 clay
execute unless entity @e[scores={ArenaRound=1..}] run kill @e[tag=DiamondAS]
execute unless entity @e[scores={ArenaRound=1..}] run kill @e[tag=DiamondAS]

# ARENA ENTRANCE
execute unless block -3 54 1941 iron_bars[east=false,west=false,north=false,south=false] run setblock -3 54 1941 iron_bars[east=false,west=false,north=false,south=false]
execute unless block 3 54 1941 iron_bars[east=false,west=false,north=false,south=false] run setblock 3 54 1941 iron_bars[east=false,west=false,north=false,south=false]

execute unless block -2 53 1942 iron_bars[east=false,west=false,north=false,south=false] run setblock -2 53 1942 iron_bars[east=false,west=false,north=false,south=false]
execute unless block -2 53 1944 iron_bars[east=false,west=false,north=false,south=false] run setblock -2 53 1944 iron_bars[east=false,west=false,north=false,south=false]
execute unless block 2 53 1942 iron_bars[east=false,west=false,north=false,south=false] run setblock 2 53 1942 iron_bars[east=false,west=false,north=false,south=false]
execute unless block 2 53 1944 iron_bars[east=false,west=false,north=false,south=false] run setblock 2 53 1944 iron_bars[east=false,west=false,north=false,south=false]