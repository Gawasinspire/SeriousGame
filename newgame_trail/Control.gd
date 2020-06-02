extends Control

func _ready():
	var prompt = ["Eric","Informatik","Godot"]	
	var story = "Once upon a time %s, a %s Student entered a Village called Clausthal. The Charming boy has no friends in mountain village clausthal but eagerly searching for one new friend. He is interested in learning %s"
	print(story % prompt)
	$VBoxContainer/DisplayText.text = story % prompt


func _on_PlayerText_text_entered(new_text):
	$VBoxContainer/HBoxContainer/PlayerText.clear()
	
	

func update_DisplayText(new_text):
	$VBoxContainer/DisplayText.text = new_text
	
	


func _on_TextureButton_pressed():
	var words = $VBoxContainer/HBoxContainer/PlayerText.text
	update_DisplayText(words)
	
	
