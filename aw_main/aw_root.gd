# scrip: aw_root

extends Node

var gamerunnin = false
var score = 0
var highscore = 0

func _ready():
	set_process(true)

# input from the user to star/end game
func _process(delta):
	
	if (Input.is_action_pressed("ui_quit")):
		get_tree().quit()
	
	if gamerunnin:
		run_game(delta)
	
	else:
		if (Input.is_action_pressed("ui_accept")):
			star_game()

# load game level
func star_game():
	score = 0
	get_node("hud_root").set_score(score)
	get_node("info").set_text("Running")
	get_node("hud_root").set_running()
	gamerunnin = true

# Running loop
func run_game(delta):
	
	if (Input.is_action_pressed("ui_cancel")):
		gamerunnin = false
		get_node("info").set_text("Game Over")
		if (score >= highscore):
			highscore = score
		get_node("hud_root").set_game_over(highscore)
	
	elif (Input.is_action_pressed("ui_select")):
		score = score + 1
		get_node("hud_root").set_score(score)