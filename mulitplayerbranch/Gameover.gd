extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	sco()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func sco():
	if is_network_master():
		$Label3.text= get_node("res://QuizRoom.gd").get("master_score")
	elif !is_network_master():
		$Label3.text= "A Number does not decides you, just a motto of competion"


func _on_TextureButton_pressed():
	queue_free()
	get_tree().change_scene('res://Mainmenu.tscn')
