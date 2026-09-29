extends Control

var coin: int = 0
@export var clicker_strength: int = 10
@onready var coin_label: Label = $Coinlabel

func _ready (): 
	$AnimatedSprite2D.play("default")
	
# When clicker button is clicked
func _on_clicker_button_button_down() -> void:
	change_score(clicker_strength)
	
func change_score(change:int)-> int:
	coin += change
	coin_label.text = "Coin: " + str(coin)
	return coin

#When upgrade is pressed 
func _on_upgrade_button_pressed() -> void:
	clicker_strength = clicker_strength *2 
	clicker_strength = clicker_strength *2
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
