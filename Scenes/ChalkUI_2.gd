extends Control

var opened = false

func _process(delta):
	if $".".visible:
		if not opened:
			opened = true
			$Anim.play("Open")
	else:
		if opened:
			$Anim.play_backwards("Open")
			opened = false
