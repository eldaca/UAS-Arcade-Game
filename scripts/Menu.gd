extends Control


func _ready():
	$VBoxContainer/StartButton.grab_focus()


func _on_QuitButton_pressed():
	get_tree().quit()
	

func _on_OptionButton_pressed():
	get_node("OptionMenu").set_exclusive(true)
	get_node("OptionMenu").popup()
	get_tree().set_pause(true)
	
func _on_StartButton_pressed():
	get_tree().change_scene("res://menu/Opening.tscn")

func _on_BackButton_pressed():
	$Click.play()
	get_node("OptionMenu").hide()
	get_tree().set_pause(false)


func _on_StartButton_mouse_entered():
	$Click.play()

func _on_OptionButton_mouse_entered():
	$Click.play()

func _on_QuitButton_mouse_entered():
	$Click.play()

