extends Control
var player_words = []
var story = "Once upon a time %s, a %s Student entered a Village called Clausthal. The Charming boy has no friends in mountain village clausthal but eagerly searching for one new friend. He is interested in learning %s"
var prompt = ["Eric","Informatik","Godot"]	

onready var PlayerText = $VBoxContainer/HBoxContainer/PlayerText
onready var DisplayText = $VBoxContainer/DisplayText

func _ready():
	check_player_words_length()
	

func _on_PlayerText_text_entered(new_text):
	$VBoxContainer/HBoxContainer/PlayerText.clear()
	
	


func _on_TextureButton_pressed():
	add_to_player_words()
	check_player_words_length()
	


func add_to_player_words():
	player_words.append(PlayerText.text)
	PlayerText.clear()
	check_player_words_length()
	


func is_story_done():
	return player_words.size() == prompt.size()
	

func check_player_words_length():
	if is_story_done():
		tell_story()
	else:
		prompt_player()

func tell_story():
	DisplayText.text = story % player_words

func prompt_player():
	DisplayText.text = "May i have a name please" + prompt[player_words.size()]