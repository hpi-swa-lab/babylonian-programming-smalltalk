scaleBehaviors
linearScale
	
	
	^ [:domain :value | (value - domain min) /  domain extent]