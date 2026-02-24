extends Node

@onready var coin_count: Label = %CoinCount

var score = 0
# Called when the node enters the scene tree for the first time.
func add_point():
	score += 1
	coin_count.text = str(score)
	print(score)
	
