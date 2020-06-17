extends Control
var player_words = []

var template = [
		{"prompt" :  ["Eric","Informatik","Godot"],
		"story" : "Once upon a time %s, a %s Student entered a Village called Clausthal. The Charming boy has no friends in mountain village clausthal but eagerly searching for one new friend. He is interested in learning %s"
		},
		{"story": "There once was %s called %s who searched far and wide for wide for the mythical %s noun of %s",
		"prompt" : ["a noun","a name","an adjective", "another name"]
		}
		]
var current_story  

onready var PlayerText = $VBoxContainer/HBoxContainer/PlayerText
onready var DisplayText = $VBoxContainer/DisplayText

func _ready():
	pick_current_story()
	DisplayText.text = "Welcome to BeU"
	check_player_words_length()
	PlayerText.grab_focus()


func pick_current_story():
	current_story = template[randi() % template.size()]
	

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
	return player_words.size() == current_story.prompt.size()
	

func check_player_words_length():
	if is_story_done():
		tell_story()
	else:
		prompt_player()

func tell_story():
	DisplayText.text = current_story.story % player_words

func prompt_player():
	DisplayText.text = "May i have a name please" + current_story.prompt[player_words.size()]