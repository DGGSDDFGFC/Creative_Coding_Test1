extends Node2D

var draw_face = preload("res://face.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label_happy.text = "Happy: " +str(counting.happy_count)
	$Label_sad.text = "Sad: " + str(counting.sad_count)
	pass # Replace with function body.

var happy_count = 0
var sad_count = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label_happy.text = "Happy: " +str(counting.happy_count)
	$Label_sad.text = "Sad: " + str(counting.sad_count)
	pass


func _on_button_pressed():
	var faces = randi_range(1, 10)
	var posx = randi_range(100, 800)
	var posy = randi_range(100, 400)
	for i in range(faces):
		add_child(draw_face.instantiate())
		
	$Button.position = Vector2(posx, posy) #funny thing I decised to add
	pass
	
