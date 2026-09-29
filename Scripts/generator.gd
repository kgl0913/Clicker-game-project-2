extends Control
@export var gamemanager: Node
@export var generator_strength: int = 400
@export var cost: int = 2000
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
	$Label.text = "Generator cost: " + str(cost)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_generator_timer_timeout() -> void:
	pass # Replace with function body.
	gamemanager.change_score(300)
	

func _on_generator_button_button_down() -> void:
	pass # Replace with function body.
	$"Generator timer".start()
	if gamemanager.coin >= cost: 
		gamemanager.change_score(-1*cost)
