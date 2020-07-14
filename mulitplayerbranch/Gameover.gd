extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	if is_network_master():
		$Label3.text= "Number does not decides you, just a motto of competion"
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	queue_free()
	get_tree().change_scene('res://Mainmenu.tscn')
