extends WindowDialog


func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().paused = !get_tree().paused
		self.visible = !self.visible
		

func _on_Main_Menu_pressed():
	get_tree().change_scene("res://menu/Menu.tscn")



func _on_Resume_mouse_entered():
	$Click2.play()


func _on_Main_Menu_mouse_entered():
	$Click2.play()
