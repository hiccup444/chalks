extends Node

onready var Lure = get_node("/root/SulayreLure")
onready var PlayerData = get_node("/root/PlayerData")

var colors_instance
var periodic_timer
var config_path = "user://chalks_config.json"
var default_config = {
	"hotkey": "F9",
	"valid_keys": [
		"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
		"N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
		"0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
		"F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10", "F11", "F12",
		"LEFT", "RIGHT", "UP", "DOWN",
		"SHIFT", "CTRL", "ALT", "META", "CAPSLOCK", "NUMLOCK", "SCROLLLOCK",
		"SPACE", "TAB", "ENTER", "BACKSPACE", "ESCAPE", "INSERT", "DELETE",
		"HOME", "END", "PAGEUP", "PAGEDOWN",
		"KP_0", "KP_1", "KP_2", "KP_3", "KP_4", "KP_5", "KP_6", "KP_7", "KP_8", "KP_9",
		"KP_ENTER", "KP_PLUS", "KP_MINUS", "KP_MULTIPLY", "KP_DIVIDE", "KP_PERIOD", "KP_EQUALS",
		"EXCLAM", "QUOTEDBL", "HASH", "DOLLAR", "PERCENT", "AMPERSAND", "APOSTROPHE",
		"PARENLEFT", "PARENRIGHT", "ASTERISK", "PLUS", "COMMA", "MINUS",
		"PERIOD", "SLASH", "COLON", "SEMICOLON", "LESS", "EQUALS", "GREATER",
		"QUESTION", "AT", "BRACKETLEFT", "BACKSLASH", "BRACKETRIGHT",
		"UNDERSCORE", "GRAVE", "PRINT", "PAUSE", "CLEAR"
	]
}

func _ready():
	print("[CHALKS] Starting script...")
	load_config()
	add_chalks()
	register_hotkey()
	
func add_chalks():
	print("Adding chalks...")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded", "res://mods/hostileonion.chalks/Resources/Item_Chalk//legacy/chalk_pastelblue.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 1", "res://mods/hostileonion.chalks/Resources/Item_Chalk/legacy/chalk_pastelcream.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 2", "res://mods/hostileonion.chalks/Resources/Item_Chalk/legacy/chalk_pastelfoam.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 3", "res://mods/hostileonion.chalks/Resources/Item_Chalk/legacy/chalk_pastelgreen1.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 4", "res://mods/hostileonion.chalks/Resources/Item_Chalk/legacy/chalk_pastelgreen2.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 5", "res://mods/hostileonion.chalks/Resources/Item_Chalk/legacy/chalk_pastelgrey1.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 6", "res://mods/hostileonion.chalks/Resources/Item_Chalk/legacy/chalk_pastelgrey2.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 7", "res://mods/hostileonion.chalks/Resources/Item_Chalk/legacy/chalk_pastelorange.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 8", "res://mods/hostileonion.chalks/Resources/Item_Chalk/legacy/chalk_pastelpink1.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 9", "res://mods/hostileonion.chalks/Resources/Item_Chalk/legacy/chalk_pastelpink2.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 10", "res://mods/hostileonion.chalks/Resources/Item_Chalk/legacy/chalk_pastelpurple.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 11", "res://mods/hostileonion.chalks/Resources/Item_Chalk/legacy/chalk_pastelred.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 12", "res://mods/hostileonion.chalks/Resources/Item_Chalk/legacy/chalk_pastelskin.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 13", "res://mods/hostileonion.chalks/Resources/Item_Chalk/legacy/chalk_pastelyellow.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 14", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/yellow4_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 15", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/yellow5_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 16", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/blue1_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 17", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/blue2_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 18", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/blue3_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 19", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/blue4_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 20", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/blue5_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 21", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/green1_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 22", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/green2_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 23", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/green3_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 24", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/green4_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 25", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/grey1_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 26", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/grey2_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 27", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/grey3_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 28", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/grey4_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 29", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/orange1_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 30", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/orange2_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 31", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/orange3_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 32", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/orange4_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 33", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/orange5_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 34", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/pink1_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 35", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/pink2_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 36", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/pink3_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 37", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/pink4_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 38", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/purple1_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 39", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/purple2_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 40", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/purple3_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 41", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/purple4_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 42", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/red1_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 43", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/red2_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 44", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/red3_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 45", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/red4_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 46", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/red5_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 47", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/skin1_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 48", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/skin2_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 49", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/skin3_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 50", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/skin4_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 51", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/skin5_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 52", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/yellow1_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 53", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/yellow2_chalk.tres")
	Lure.add_content("hostileonion.chalks", "Chalks Expanded 54", "res://mods/hostileonion.chalks/Resources/Item_Chalk/new/yellow3_chalk.tres")

	modify_tileset(
		"res://Scenes/Entities/ChalkCanvas/chalk_canvas.tscn",
		"Viewport/TileMap",
		[
			{"id": 7, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pastelblue.png"},
			{"id": 8, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pastelcream.png"},
			{"id": 9, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pastelfoam.png"},
			{"id": 10, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pastelgreen1.png"},
			{"id": 11, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pastelgreen2.png"},
			{"id": 12, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pastelgrey1.png"},
			{"id": 13, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pastelgrey2.png"},
			{"id": 14, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pastelorange.png"},
			{"id": 15, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pastelpink1.png"},
			{"id": 16, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pastelpink2.png"},
			{"id": 17, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pastelpurple.png"},
			{"id": 18, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pastelred.png"},
			{"id": 19, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pastelskin.png"},
			{"id": 20, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pastelyellow.png"},
			{"id": 21, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/yellow1_chalk.png"},
			{"id": 22, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/yellow2_chalk.png"},
			{"id": 23, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/yellow3_chalk.png"},
			{"id": 24, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/yellow4_chalk.png"},
			{"id": 25, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/yellow5_chalk.png"},
			{"id": 26, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/blue1_chalk.png"},
			{"id": 27, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/blue2_chalk.png"},
			{"id": 28, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/blue3_chalk.png"},
			{"id": 29, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/blue4_chalk.png"},
			{"id": 30, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/blue5_chalk.png"},
			{"id": 31, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/green1_chalk.png"},
			{"id": 32, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/green2_chalk.png"},
			{"id": 33, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/green3_chalk.png"},
			{"id": 34, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/green4_chalk.png"},
			{"id": 35, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/grey1_chalk.png"},
			{"id": 36, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/grey2_chalk.png"},
			{"id": 37, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/grey3_chalk.png"},
			{"id": 38, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/grey4_chalk.png"},
			{"id": 39, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/orange1_chalk.png"},
			{"id": 40, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/orange2_chalk.png"},
			{"id": 41, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/orange3_chalk.png"},
			{"id": 42, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/orange4_chalk.png"},
			{"id": 43, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/orange5_chalk.png"},
			{"id": 44, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pink1_chalk.png"},
			{"id": 45, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pink2_chalk.png"},
			{"id": 46, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pink3_chalk.png"},
			{"id": 47, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/pink4_chalk.png"},
			{"id": 48, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/purple1_chalk.png"},
			{"id": 49, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/purple2_chalk.png"},
			{"id": 50, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/purple3_chalk.png"},
			{"id": 51, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/purple4_chalk.png"},
			{"id": 52, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/red1_chalk.png"},
			{"id": 53, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/red2_chalk.png"},
			{"id": 54, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/red3_chalk.png"},
			{"id": 55, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/red4_chalk.png"},
			{"id": 56, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/red5_chalk.png"},
			{"id": 57, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/skin1_chalk.png"},
			{"id": 58, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/skin2_chalk.png"},
			{"id": 59, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/skin3_chalk.png"},
			{"id": 60, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/skin4_chalk.png"},
			{"id": 61, "texture": "res://mods/hostileonion.chalks/Textures/Tilemap/skin5_chalk.png"}
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

func load_config():
	var file = File.new()
	if file.file_exists(config_path):
		file.open(config_path, File.READ)
		var data = file.get_as_text()
		file.close()
		
		var config = JSON.parse(data)
		if config.error == OK:
			var parsed = config.result
			if parsed.has("hotkey"):
				hiccup_open_key = OS.find_scancode_from_string(parsed["hotkey"])
				print("Loaded hotkey:", parsed["hotkey"])
			else:
				print("No hotkey found in config, using default.")
				save_config()
		else:
			print("Error parsing JSON config:", config.error_string())
	else:
		print("Config file not found, creating default.")
		save_config()


func save_config():
	var file = File.new()
	file.open(config_path, File.WRITE)
	var config = {
		"hotkey": OS.get_scancode_string(hiccup_open_key),
		"valid_keys": default_config["valid_keys"]  # Include valid keys in the JSON for reference
	}
	file.store_string(JSON.print(config, "\t"))  # Use a tab for indentation
	file.close()
	print("Config saved with indentation for readability.")

# UI

var canOpen = true
var hiccup_open_key = KEY_F9
var opened = false

var ui = preload("res://mods/hostileonion.chalks/Scenes/ChalkUI.tscn")
var spawned = false

func _process(delta):
	if Input.is_key_pressed(hiccup_open_key):
		if not spawned:
			var playerHud = get_node_or_null("/root/playerhud/main")
			if playerHud:
				playerHud.add_child(ui.instance())
				spawned = true
		else:
			var playerHud = get_node_or_null("/root/playerhud/main")
			var ui = get_node_or_null("/root/playerhud/main/ChalkUI")
			if canOpen:
				canOpen = false
				if opened:
					opened = not opened
					ui.visible = false
				else:
					opened = not opened
					ui.visible = true
				yield(get_tree().create_timer(0.5), "timeout")
				canOpen = true

func register_hotkey():
	InputMap.add_action("hiccup_open_key")
	InputMap.action_erase_events("hiccup_open_key")

	var input_event = InputEventKey.new()
	input_event.scancode = hiccup_open_key
	InputMap.action_add_event("hiccup_open_key", input_event)

# UI
