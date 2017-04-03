# script: HUD
extends Node

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func set_game_over(highscore):
	get_node("label_game_over").set_text("High Score:\n\n0000" + str(highscore) + "\n\n\nPress Enter to \n\nPlay Again!")
	get_node("label_game_over").show()

func set_running():
	get_node("label_game_over").hide()
	get_node("label_menu").hide()

func set_score(score):
	get_node("label_score").set_text("Score: 0000" + str(score))
	