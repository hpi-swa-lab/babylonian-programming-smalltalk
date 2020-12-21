instance-creation
initialize
	
	self ast: (RBParser parseMethod: (self test) getSource).