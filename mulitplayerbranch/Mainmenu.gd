extends Control

func _on_ExplorerButton_pressed():
	get_tree().change_scene('res://ExplorerRooms1.tscn')

func _on_FamilyButton_pressed():
	get_tree().change_scene('res://FamilyRooms.tscn')


func _on_FriendsButton_pressed():
	get_tree().change_scene('res://FriendRoom.tscn')


func _on_HelpButton_pressed():
	get_tree().change_scene('res://HelpMenu.tscn')


func _on_ExitButton_pressed():
	queue_free()
