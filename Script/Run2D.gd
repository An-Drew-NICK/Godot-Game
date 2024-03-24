extends CharacterBody2D
const SPEED = 200  # скорость персонажа


func _physics_process(delta):
	velocity = Vector2()
	
	# проверяем, нажата ли клавиша "ui_right" и добавляем скорость вправо
	if Input.is_action_pressed("ui_right"):
		velocity.x += SPEED

	
	# проверяем, нажата ли клавиша "ui_left" и добавляем скорость влево
	if Input.is_action_pressed("ui_left"):
		velocity.x -= SPEED
	
	# проверяем, нажата ли клавиша "ui_down" и добавляем скорость вниз
	if Input.is_action_pressed("ui_down"):
		velocity.y += SPEED
	
	# проверяем, нажата ли клавиша "ui_up" и добавляем скорость вверх
	if Input.is_action_pressed("ui_up"):
		velocity.y -= SPEED
	
	# нормализуем вектор скорости и умножаем на скорость
	velocity = velocity.normalized() * SPEED

	
 
	move_and_slide()
