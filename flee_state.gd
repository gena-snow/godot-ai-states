extends State

@export var flee_distance : float = 6.0

func enter():
	super.enter()
	controller.is_running = true
	flee()

func exit() :
	super.exit()
	controller.is_running = false

func navigation_complete():
	state_machine.change_state("Wander")

func flee():
	var p_dir = (controller.position - controller.player.position).normalized()
	var mov_pos = controller.position +	 p_dir*flee_distance
	controller.move_to_position(mov_pos)
