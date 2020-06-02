extends Control

func _ready():
	var person = "Eric"
	var prompt = ["Eric","Informatik","Godot"]
	
	var movie = "Minions"
	var story = "Once upon a time %s, a %s Student entered a Village called Clausthal. The Charming boy has no friends in mountain village clausthal but eagerly searching for one new friend. He is interested in learning %s"
	print(story % prompt)
	$DisplayText.text = story % prompt
	
	
	
	