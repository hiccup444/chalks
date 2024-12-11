extends GridContainer

var ITEMS = {
	"pastelyellowchalk": {"Name": "Yellow", "Icon": preload("res://mods/hostileonion.chalks/Textures/pastelyellow_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 13", "item_ref": 2248939583, "size": 1.0, "quality": 0},
	"yellow1chalk": {"Name": "Yellow", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/yellow1_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 52", "item_ref": 2248939622, "size": 1.0, "quality": 0 },
	"yellow2chalk": {"Name": "Yellow", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/yellow2_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 53", "item_ref": 2248939623, "size": 1.0, "quality": 0 },
	"yellow3chalk": {"Name": "Yellow", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/yellow3_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 54", "item_ref": 2248939624, "size": 1.0, "quality": 0 },
	"yellow4chalk": {"Name": "Yellow", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/yellow4_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 14", "item_ref": 2248939584, "size": 1.0, "quality": 0 },
	"yellow5chalk": {"Name": "Yellow", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/yellow5_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 15", "item_ref": 2248939585, "size": 1.0, "quality": 0 },
	"pastelfoamchalk": {"Name": "Blue", "Icon": preload("res://mods/hostileonion.chalks/Textures/pastelfoam_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 2", "item_ref": 2248939572, "size": 1.0, "quality": 0},
	"pastelbluechalk": {"Name": "Blue", "Icon": preload("res://mods/hostileonion.chalks/Textures/pastelblue_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded", "item_ref": 2248939570, "size": 1.0, "quality": 0},
	"blue1chalk": {"Name": "Blue", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/blue1_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 16", "item_ref": 2248939586, "size": 1.0, "quality": 0 },
	"blue2chalk": {"Name": "Blue", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/blue2_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 17", "item_ref": 2248939587, "size": 1.0, "quality": 0 },
	"blue3chalk": {"Name": "Blue", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/blue3_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 18", "item_ref": 2248939588, "size": 1.0, "quality": 0 },
	"blue4chalk": {"Name": "Blue", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/blue4_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 19", "item_ref": 2248939589, "size": 1.0, "quality": 0 },
	"blue5chalk": {"Name": "Blue", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/blue5_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 20", "item_ref": 2248939590, "size": 1.0, "quality": 0 },
	"pastelgreen1chalk": {"Name": "Green", "Icon": preload("res://mods/hostileonion.chalks/Textures/pastelgreen1_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 3", "item_ref": 2248939573, "size": 1.0, "quality": 0},
	"pastelgreen2chalk": {"Name": "Green", "Icon": preload("res://mods/hostileonion.chalks/Textures/pastelgreen2_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 4", "item_ref": 2248939574, "size": 1.0, "quality": 0},
	"green1chalk": {"Name": "Green", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/green1_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 21", "item_ref": 2248939591, "size": 1.0, "quality": 0 },
	"green2chalk": {"Name": "Green", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/green2_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 22", "item_ref": 2248939592, "size": 1.0, "quality": 0 },
	"green3chalk": {"Name": "Green", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/green3_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 23", "item_ref": 2248939593, "size": 1.0, "quality": 0 },
	"green4chalk": {"Name": "Green", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/green4_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 24", "item_ref": 2248939594, "size": 1.0, "quality": 0 },
	"pastelgrey1chalk": {"Name": "Grey", "Icon": preload("res://mods/hostileonion.chalks/Textures/pastelgrey1_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 5", "item_ref": 2248939575, "size": 1.0, "quality": 0},
	"pastelgrey2chalk": {"Name": "Grey", "Icon": preload("res://mods/hostileonion.chalks/Textures/pastelgrey2_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 6", "item_ref": 2248939576, "size": 1.0, "quality": 0},
	"grey1chalk": {"Name": "Grey", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/grey1_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 25", "item_ref": 2248939595, "size": 1.0, "quality": 0 },
	"grey2chalk": {"Name": "Grey", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/grey2_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 26", "item_ref": 2248939596, "size": 1.0, "quality": 0 },
	"grey3chalk": {"Name": "Grey", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/grey3_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 27", "item_ref": 2248939597, "size": 1.0, "quality": 0 },
	"grey4chalk": {"Name": "Grey", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/grey4_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 28", "item_ref": 2248939598, "size": 1.0, "quality": 0 },
	"pastelorangechalk": {"Name": "Orange", "Icon": preload("res://mods/hostileonion.chalks/Textures/pastelorange_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 7", "item_ref": 2248939577, "size": 1.0, "quality": 0},
	"orange1chalk": {"Name": "Orange", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/orange1_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 29", "item_ref": 2248939599, "size": 1.0, "quality": 0 },
	"orange2chalk": {"Name": "Orange", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/orange2_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 30", "item_ref": 2248939600, "size": 1.0, "quality": 0 },
	"orange3chalk": {"Name": "Orange", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/orange3_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 31", "item_ref": 2248939601, "size": 1.0, "quality": 0 },
	"orange4chalk": {"Name": "Orange", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/orange4_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 32", "item_ref": 2248939602, "size": 1.0, "quality": 0 },
	"orange5chalk": {"Name": "Orange", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/orange5_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 33", "item_ref": 2248939603, "size": 1.0, "quality": 0 },
	"pastelpink1chalk": {"Name": "Pink", "Icon": preload("res://mods/hostileonion.chalks/Textures/pastelpink1_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 8", "item_ref": 2248939578, "size": 1.0, "quality": 0},
	"pastelpink2chalk": {"Name": "Pink", "Icon": preload("res://mods/hostileonion.chalks/Textures/pastelpink2_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 9", "item_ref": 2248939579, "size": 1.0, "quality": 0},
	"pink1chalk": {"Name": "Pink", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/pink1_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 34", "item_ref": 2248939604, "size": 1.0, "quality": 0 },
	"pink2chalk": {"Name": "Pink", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/pink2_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 35", "item_ref": 2248939605, "size": 1.0, "quality": 0 },
	"pink3chalk": {"Name": "Pink", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/pink3_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 36", "item_ref": 2248939606, "size": 1.0, "quality": 0 },
	"pink4chalk": {"Name": "Pink", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/pink4_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 37", "item_ref": 2248939607, "size": 1.0, "quality": 0 },
	"pastelpurplechalk": {"Name": "Purple", "Icon": preload("res://mods/hostileonion.chalks/Textures/pastelpurple_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 10", "item_ref": 2248939580, "size": 1.0, "quality": 0},
	"purple1chalk": {"Name": "Purple", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/purple1_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 38", "item_ref": 2248939608, "size": 1.0, "quality": 0 },
	"purple2chalk": {"Name": "Purple", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/purple2_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 39", "item_ref": 2248939609, "size": 1.0, "quality": 0 },
	"purple3chalk": {"Name": "Purple", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/purple3_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 40", "item_ref": 2248939610, "size": 1.0, "quality": 0 },
	"purple4chalk": {"Name": "Purple", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/purple4_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 41", "item_ref": 2248939611, "size": 1.0, "quality": 0 },
	"pastelredchalk": {"Name": "Red", "Icon": preload("res://mods/hostileonion.chalks/Textures/pastelred_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 11", "item_ref": 2248939581, "size": 1.0, "quality": 0},
	"red1chalk": {"Name": "Red", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/red1_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 42", "item_ref": 2248939612, "size": 1.0, "quality": 0 },
	"red2chalk": {"Name": "Red", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/red2_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 43", "item_ref": 2248939613, "size": 1.0, "quality": 0 },
	"red3chalk": {"Name": "Red", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/red3_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 44", "item_ref": 2248939614, "size": 1.0, "quality": 0 },
	"red4chalk": {"Name": "Red", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/red4_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 45", "item_ref": 2248939615, "size": 1.0, "quality": 0 },
	"red5chalk": {"Name": "Red", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/red5_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 46", "item_ref": 2248939616, "size": 1.0, "quality": 0 },
	"pastelcreamchalk": {"Name": "Skin", "Icon": preload("res://mods/hostileonion.chalks/Textures/pastelcream_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 1", "item_ref": 2248939571, "size": 1.0, "quality": 0},
	"pastelskinchalk": {"Name": "Skin", "Icon": preload("res://mods/hostileonion.chalks/Textures/pastelskin_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 12", "item_ref": 2248939582, "size": 1.0, "quality": 0},
	"skin1chalk": {"Name": "Skin", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/skin1_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 47", "item_ref": 2248939617, "size": 1.0, "quality": 0 },
	"skin2chalk": {"Name": "Skin", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/skin2_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 48", "item_ref": 2248939618, "size": 1.0, "quality": 0 },
	"skin3chalk": {"Name": "Skin", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/skin3_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 49", "item_ref": 2248939619, "size": 1.0, "quality": 0 },
	"skin4chalk": {"Name": "Skin", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/skin4_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 50", "item_ref": 2248939620, "size": 1.0, "quality": 0 },
	"skin5chalk": {"Name": "Skin", "Icon": preload("res://mods/hostileonion.chalks/Textures/Icons/skin5_chalk.png"), "item_id": "hostileonion.chalks.Chalks Expanded 51", "item_ref": 2248939621, "size": 1.0, "quality": 0 }
}

var panelUI = preload("res://mods/hostileonion.chalks/Scenes/Panel.tscn")

func _ready():
	var order = 0
	for item_name in ITEMS.keys():
		ITEMS[item_name]["order"] = order
		order += 1
		var new_panel = panelUI.instance()
		new_panel.name = item_name

		new_panel.get_node("Color").text = ITEMS[item_name]["Name"]
		new_panel.get_node("Icon").texture = ITEMS[item_name]["Icon"]
		new_panel.get_node("Button/TooltipNode").header = ITEMS[item_name]["Name"]

		var button = new_panel.get_node("Button")
		button.connect("pressed", get_tree().get_root().get_node("ChalkUI"), "_on_equip_pressed", [item_name])

		add_child(new_panel)

var hiccup_open_key = KEY_F9


func _on_Exit_pressed():
	var ui = get_node_or_null("/root/playerhud/main/ChalkUI")
	var search_bar = get_node_or_null("/root/playerhud/main/ChalkUI/SearchBar")

	if ui:
		ui.visible = false

		if search_bar:
			search_bar.text = ""

		for child in get_children():
			if child is Panel:
				child.visible = true
	else:
		print("Error: ChalkUI node not found.")

func _on_searchbar_text_changed(new_text):
	new_text = new_text.to_lower()

	if new_text == "":
		for child in get_children():
			if child is Panel:
				child.visible = true
		return

	for child in get_children():
		if child is Panel:
			var item_name = child.name
			var item_data = ITEMS.get(item_name, null)
			if item_data:
				var item_display_name = item_data["Name"].to_lower()
				if new_text in item_display_name:
					child.visible = true
				else:
					child.visible = false
