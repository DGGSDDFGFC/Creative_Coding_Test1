extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _draw() -> void:
	draw_face()
	pass
	
func draw_face():
	var posx = randf_range(0, 1000)
	var posy = randf_range(0, 500)
	var radius = randi_range(10, 75)
	var eyes = randi_range(2, 6)
	var color = randf_range(0, 1)
	var happy = randi_range(1, 2) # 1 is happy 2 is sad
	draw_circle(Vector2(posx, posy), radius, Color.BLACK, false)
	pass
