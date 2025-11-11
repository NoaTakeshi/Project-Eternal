extends CharacterBody2D


const SPEED = 300.0



func _physics_process(delta):
	
	var dir: Vector2 = Input.get_vector("left","rigth","up","down")
	
	
	if dir:
		
		if dir.x != 0:
			if dir.x > 0:
				$AnimatePlayer.play("Caminar_derecha")
				pass
			else:
				$AnimatePlayer.play("Caminar_izquierda")
			pass
			
		else:
			if dir.y > 0:
				$AnimatePlayer.play("Caminar_abajo")
				pass
			else:
				$AnimatePlayer.play("Caminar_Arriba")
			pass
			
		pass
	else:
		$AnimatePlayer.stop()
		pass
		
	velocity = dir.normalized() * SPEED
	move_and_slide()
		
	pass
