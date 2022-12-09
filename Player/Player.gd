extends KinematicBody

func _physics_process(_delta):
	if not $AnimationPlayer.is_playing():
		$AnimationTree.active = true
		
	if Input.is_action_just_pressed("shoot"):
		$AnimationTree.active = false
		$AnimationPlayer.play("Shoot")
