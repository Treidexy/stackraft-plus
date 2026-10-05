
execute as @a run tellraw @s [{"text": "Your score: "}, {"score": {"name": "@s", "objective": "return_count"}}]
execute if items entity @s player.crafting.* minecraft:player_head[item_name="Compressed Carrot"] run return run loot give @s loot ketket_stackraft:carrot
execute if items entity @s player.crafting.* minecraft:player_head[item_name="Compressed Beetroot"] run return run loot spawn ~ ~ ~ loot ketket_stackraft:beetroot
execute if items entity @s player.crafting.* minecraft:player_head[item_name="Compressed Ender Pearl"] run return run loot spawn ~ ~ ~ loot ketket_stackraft:ender_pearl
execute if items entity @s player.crafting.* minecraft:player_head[item_name="Compressed Gunpowder"] run return run loot spawn ~ ~ ~ loot ketket_stackraft:gunpowder
execute if items entity @s player.crafting.* minecraft:player_head[item_name="Compressed Potato"] run return run loot spawn ~ ~ ~ loot ketket_stackraft:potato
execute if items entity @s player.crafting.* minecraft:player_head[item_name="Compressed Rotten Flesh"] run return run loot spawn ~ ~ ~ loot ketket_stackraft:rotten_flesh
execute if items entity @s player.crafting.* minecraft:player_head[item_name="Compressed Bamboo"] run return run loot spawn ~ ~ ~ loot ketket_stackraft:bamboo
execute if items entity @s player.crafting.* minecraft:player_head[item_name="Compressed Blaze Rod"] run return run loot spawn ~ ~ ~ loot ketket_stackraft:blaze_rod
execute if items entity @s player.crafting.* minecraft:player_head[item_name="Compressed Egg"] run return run loot spawn ~ ~ ~ loot ketket_stackraft:egg
execute if items entity @s player.crafting.* minecraft:player_head[item_name="Compressed Sugar Cane"] run return run loot spawn ~ ~ ~ loot ketket_stackraft:sugar_cane
execute if items entity @s player.crafting.* minecraft:player_head[minecraft:custom_data~{"stackraft_item":"minecraft:firework_rocket"}] run return run loot give @s loot ketket_stackraft:firework_rocket
