extends AudioStreamPlayer

func _process(delta):
	var parent: Control = get_parent()
	if parent.visible and not playing:
		play()
	if not parent.visible and playing:
		stop()
