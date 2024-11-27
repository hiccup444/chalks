extends Node

onready var Lure = get_node("/root/SulayreLure")
onready var colors_ui = preload("res://mods/hostileonion.chalks/Scenes/HUD/colors.tscn")

var colors_instance
var periodic_timer

func _ready():
	print("Starting script...")
	add_chalks()
	initialize_colors_ui()
	log_scene_paths()
	start_periodic_logging()

func add_chalks():
	print("Adding chalks...")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded", "res://mods/hostileonion.chalks/Resources/Item_Chalk/chalk_pastelblue.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 1", "res://mods/hostileonion.chalks/Resources/Item_Chalk/chalk_pastelcream.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 2", "res://mods/hostileonion.chalks/Resources/Item_Chalk/chalk_pastelfoam.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 3", "res://mods/hostileonion.chalks/Resources/Item_Chalk/chalk_pastelgreen1.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 4", "res://mods/hostileonion.chalks/Resources/Item_Chalk/chalk_pastelgreen2.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 5", "res://mods/hostileonion.chalks/Resources/Item_Chalk/chalk_pastelgrey1.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 6", "res://mods/hostileonion.chalks/Resources/Item_Chalk/chalk_pastelgrey2.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 7", "res://mods/hostileonion.chalks/Resources/Item_Chalk/chalk_pastelorange.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 8", "res://mods/hostileonion.chalks/Resources/Item_Chalk/chalk_pastelpink1.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 9", "res://mods/hostileonion.chalks/Resources/Item_Chalk/chalk_pastelpink2.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 10", "res://mods/hostileonion.chalks/Resources/Item_Chalk/chalk_pastelpurple.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 11", "res://mods/hostileonion.chalks/Resources/Item_Chalk/chalk_pastelred.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 12", "res://mods/hostileonion.chalks/Resources/Item_Chalk/chalk_pastelskin.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 13", "res://mods/hostileonion.chalks/Resources/Item_Chalk/chalk_pastelyellow.tres", [Lure.LURE_FLAGS.FREE_UNLOCK])

	modify_tileset(
		"res://Scenes/Entities/ChalkCanvas/chalk_canvas.tscn",
		"Viewport/TileMap",
		[
			{"id": 7, "texture": "res://mods/hostileonion.chalks/pastelblue.png"},
			{"id": 8, "texture": "res://mods/hostileonion.chalks/pastelcream.png"},
			{"id": 9, "texture": "res://mods/hostileonion.chalks/pastelfoam.png"},
			{"id": 10, "texture": "res://mods/hostileonion.chalks/pastelgreen1.png"},
			{"id": 11, "texture": "res://mods/hostileonion.chalks/pastelgreen2.png"},
			{"id": 12, "texture": "res://mods/hostileonion.chalks/pastelgrey1.png"},
			{"id": 13, "texture": "res://mods/hostileonion.chalks/pastelgrey2.png"},
			{"id": 14, "texture": "res://mods/hostileonion.chalks/pastelorange.png"},
			{"id": 15, "texture": "res://mods/hostileonion.chalks/pastelpink1.png"},
			{"id": 16, "texture": "res://mods/hostileonion.chalks/pastelpink2.png"},
			{"id": 17, "texture": "res://mods/hostileonion.chalks/pastelpurple.png"},
			{"id": 18, "texture": "res://mods/hostileonion.chalks/pastelred.png"},
			{"id": 19, "texture": "res://mods/hostileonion.chalks/pastelskin.png"},
			{"id": 20, "texture": "res://mods/hostileonion.chalks/pastelyellow.png"},
		]
	)
	print("Chalks added.")

func modify_tileset(scene_path: String, tilemap_name: String, tiles: Array):
	var packed_scene = ResourceLoader.load(scene_path)
	if not packed_scene:
		print("Failed to load scene:", scene_path)
		return

	var scene_instance = packed_scene.instance()
	if not scene_instance:
		print("Failed to instance scene:", scene_path)
		return

	var tilemap = scene_instance.get_node(tilemap_name)
	if not tilemap:
		print("TileMap not found in scene:", tilemap_name)
		return

	var tileset = tilemap.tile_set
	if not tileset:
		print("TileSet not found in TileMap.")
		return

	for tile in tiles:
		var tile_id = tile["id"]
		var texture_path = tile["texture"]
		var texture = ResourceLoader.load(texture_path)
		if not texture:
			print("Failed to load texture from path:", texture_path)
			continue

		tileset.create_tile(tile_id)
		tileset.tile_set_texture(tile_id, texture)

	var result = ResourceSaver.save(scene_path, packed_scene)
	if result == OK:
		print("Tileset modified and saved.")
	else:
		print("Failed to save modified tileset.")

func initialize_colors_ui():
	colors_instance = colors_ui.instance()
	colors_instance.hide()
	get_tree().root.add_child(colors_instance)
	print("Colors UI initialized and added to root.")

func log_scene_paths():
	var current_scene = get_tree().get_current_scene()
	if current_scene:
		print("Logging all node paths in the current scene:")
		if check_world_viewport_main(current_scene):
			refresh_ui()
		else:
			print_node_paths(current_scene)
	else:
		print("No current scene detected yet.")

func print_node_paths(node, current_path = ""):
	var full_path = current_path + "/" + node.name
	if not full_path.begins_with("/main_menu/"):
		print(full_path)
		for child in node.get_children():
			print_node_paths(child, full_path)

func check_world_viewport_main(node, current_path = "") -> bool:
	var full_path = current_path + "/" + node.name
	if full_path == "/world/Viewport/main":
		print("Found /world/Viewport/main.")
		return true
	for child in node.get_children():
		if check_world_viewport_main(child, full_path):
			return true
	return false

func start_periodic_logging():
	periodic_timer = Timer.new()
	periodic_timer.wait_time = 10.0
	periodic_timer.one_shot = false
	add_child(periodic_timer)
	periodic_timer.connect("timeout", self, "_on_periodic_log")
	periodic_timer.start()

func _on_periodic_log():
	log_scene_paths()

func refresh_ui():
	if colors_instance:
		print("Refreshing Colors UI...")
		var main_node = get_tree().get_current_scene().get_node_or_null("world/Viewport/main")
		if main_node:
			if colors_instance.get_parent() != main_node:
				colors_instance.get_parent().remove_child(colors_instance)
				main_node.add_child(colors_instance)
				print("Colors UI reparented to /world/Viewport/main.")
			colors_instance.show()
			print("Colors UI refreshed and shown.")

func stop_periodic_logging():
	if periodic_timer:
		periodic_timer.stop()
		periodic_timer = null
