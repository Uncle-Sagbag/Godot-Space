extends CharacterBody2D

@export var speed = 200

func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * speed

func _physics_process(delta):

	# Point sprite at mouse
	look_at(get_global_mouse_position())
	
	get_input()
	
	# Set velocity
	set_velocity(velocity)
	move_and_slide()
