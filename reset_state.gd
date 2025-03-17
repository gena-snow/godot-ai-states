extends State

func enter() :
	super.enter()
	state_machine.change_state("Wander")
