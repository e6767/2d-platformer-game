extends Node2D

var score: int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	setup_level() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func setup_level() -> void:
	var kiwies = $LevelRoot.get_node_or_null("Kiwies")
	if kiwies:
		for enemy in kiwies.get_children():
			enemy.player_died.connect(increase_score)
	
	var enemies = $LevelRoot.get_node_or_null("Enemies")
	if enemies:
		for enemy in enemies.get_children():
			enemy.player_died.connect(_on_player_died)

func _on_player_died(body):
	print("player killed")
	body.die()

func increase_score() -> void:
	score += 1
	print (score)
