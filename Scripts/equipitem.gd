extends Panel

onready var chalk_ui_node = get_parent()
onready var favorited_sprite = $Favorited

func _ready():
	$Button.connect("gui_input", self, "_on_Button_gui_input")  # Ensure correct signal is connected

func _on_Button_gui_input(event):
	# Only respond to mouse button events
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == BUTTON_RIGHT:
			if _is_favorited():
				_on_unfavorite_pressed()
			else:
				_on_favorite_pressed()
		elif event.button_index == BUTTON_LEFT:
			_on_equip_pressed()

func _is_favorited() -> bool:
	if not chalk_ui_node or not "ITEMS" in chalk_ui_node:
		return false

	var items = chalk_ui_node.ITEMS
	if not items.has(name):
		return false

	var item = items[name]
	return item.get("favorited", false)

func _on_equip_pressed():
	if not chalk_ui_node or not "ITEMS" in chalk_ui_node:
		return

	var items = chalk_ui_node.ITEMS

	if not items.has(name):
		print("Error: Item not found for:", name)
		return

	var item = items[name]
	var chalk_data = {
		"id": item["item_id"],
		"ref": item["item_ref"],
		"size": item["size"],
		"quality": item["quality"]
	}

	var player_instance = get_tree().get_nodes_in_group("controlled_player")[0]
	if player_instance and player_instance.has_method("_equip_item"):
		player_instance._equip_item(chalk_data)

func _on_favorite_pressed():
	if not chalk_ui_node or not "ITEMS" in chalk_ui_node:
		return

	var items = chalk_ui_node.ITEMS

	if not items.has(name):
		print("Error: Item not found for:", name)
		return

	var item = items[name]

	item["favorited"] = true  # Explicitly set favorited to true
	if favorited_sprite:
		favorited_sprite.visible = item["favorited"]

	print("Item favorited:", name)

	var grid_container = get_parent()
	if not grid_container or not grid_container is GridContainer:
		print("Error: GridContainer not found or invalid type")
		return

	var panels = grid_container.get_children()

	var favorited_panels = []
	var non_favorited_panels = []

	for panel in panels:
		if panel.name in items and items[panel.name].get("favorited", false):
			favorited_panels.append(panel)
		else:
			non_favorited_panels.append(panel)

	var reordered_panels = favorited_panels + non_favorited_panels

	for panel in reordered_panels:
		grid_container.remove_child(panel)
		grid_container.add_child(panel)
		panel.raise()

func _on_unfavorite_pressed():
	if not chalk_ui_node or not "ITEMS" in chalk_ui_node:
		return

	var items = chalk_ui_node.ITEMS

	if not items.has(name):
		print("Error: Item not found for:", name)
		return

	var item = items[name]

	item["favorited"] = false
	if favorited_sprite:
		favorited_sprite.visible = item["favorited"]

	print("Item unfavorited:", name)

	var grid_container = get_parent()
	if not grid_container or not grid_container is GridContainer:
		print("Error: GridContainer not found or invalid type")
		return

	var panels = grid_container.get_children()

	var favorited_panels = []
	var non_favorited_panels = []

	for panel in panels:
		if panel.name in items and items[panel.name].get("favorited", false):
			favorited_panels.append(panel)
		else:
			non_favorited_panels.append(panel)

	non_favorited_panels.sort_custom(self, "_sort_by_original_order")

	var reordered_panels = favorited_panels + non_favorited_panels

	for panel in reordered_panels:
		grid_container.remove_child(panel)
		grid_container.add_child(panel)
		panel.raise()

func _sort_by_original_order(a, b):
	var items = chalk_ui_node.ITEMS

	if not items.has(a.name) or not items.has(b.name):
		return 0

	return items[a.name]["order"] - items[b.name]["order"]
