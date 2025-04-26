extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_area_entered(area: Area2D) -> void:
	print("I'm a torch and the following projectile hit me, is it a fire one ? ", area.get_parent())
	if area.get_parent().has_method("get_type") && area.get_parent().get_type() == Enums.DamageType.Fire:
		print("Hooooo a fire one -> ignite !!!!")
