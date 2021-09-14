scaleBehaviors
linearScale
	
	
	^ [:domain :value | ((value - domain min) /  {domain extent. 1} max) abs]