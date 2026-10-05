: "${NAMESPACE:=minecraft}"
export NAMESPACE

# Source - https://stackoverflow.com/a/42943426
# Posted by agc, modified by community. See post 'Timeline' for change history
# Retrieved 2026-10-05, License - CC BY-SA 4.0

tc() { set -- ${*,,} ; echo ${*^} ; }

: "${ITEM_TITLE:=$(tc ${ITEM//_/ })}"
export ITEM_TITLE

cat << EOF > data/treidex_stackraft/recipe/$ITEM.json
{
	"type": "minecraft:crafting_shaped",
	"pattern": ["###", "###", "###"],
	"key": {
		"#": "$NAMESPACE:$ITEM"
	},
	"result": {
		"id": "minecraft:player_head",
		"count": 1,
		"components": {
			"minecraft:profile": {
				"properties": [
					{
						"name": "textures",
						"value": "$TEXTURE"
					}
				]
			},
			"minecraft:item_name": "Compressed $ITEM_TITLE",
			"minecraft:custom_data": {
				"stackraft": 1,
				"stackraft_item": "$NAMESPACE:$ITEM"
			}
		}
	}
}
EOF

cat << EOF > data/treidex_stackraft/loot_table/$ITEM.json
{
	"type": "generic",
	"pools": [
		{
			"rolls": 1,
			"entries": [
				{
					"type": "item",
					"name": "$NAMESPACE:$ITEM",
					"modifier": {
						"count": {
							"type": "minecraft:score",
							"target": "this",
							"score": "return_count"
						},
						"add": false,
						"type": "minecraft:set_count"
					}
				}
			]
		}
	]
}
EOF

cat << EOF >> data/treidex_stackraft/function/giveloot.mcfunction
execute if items entity @s player.crafting.* minecraft:player_head[minecraft:custom_data~{"stackraft_item":"$NAMESPACE:$ITEM"}] run return run loot give @s loot treidex_stackraft:$ITEM
EOF

echo Added $ITEM_TITLE