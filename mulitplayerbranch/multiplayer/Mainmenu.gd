extends Control

func _on_ExplorerButton_pressed():
	_load_game()

func _on_FamilyButton_pressed():
	_load_game()


func _on_FriendsButton_pressed():
	_load_game()

func _on_ExitButton_pressed():
	queue_free()


func _load_game():
	get_tree().change_scene('res://interface/Menu.tscn')

