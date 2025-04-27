extends CharacterBody2D

class_name Creature

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var health_component: HealthComponent = $HealthComponent # DEBUG
const HealthComponent = preload("res://scripts/health_component.gd")

func _ready() -> void:
	
	# for enemies the @onready wont works cause I didn't put manually the health
	# component, so an error is raised, following lines patch errors linked to
	if health_component == null:
		health_component = HealthComponent.new()
		add_child(health_component)

func _physics_process(delta: float) -> void:
	# Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta

	# Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction_x := Input.get_axis("ui_left", "ui_right")
	var direction_y := Input.get_axis("ui_up", "ui_down")
	
	if direction_x or direction_y:
		velocity.x = direction_x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if direction_y:
		velocity.y = direction_y * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	move_and_slide()



func _on_player_area_body_entered(body: Node2D) -> void:
	print("player collide with: ", body)


func _on_enemy_area_body_entered(body: Node2D) -> void:
	print("enemy collide with: ", body)

func get_health_component() -> HealthComponent:
	return health_component

#func take_fire_effect() -> void:
	#health_component.take_fire_effect()
	#print(self, ": I'm literally on fire....")
	#pass

func can_host_status_effect() -> bool:
	return true
