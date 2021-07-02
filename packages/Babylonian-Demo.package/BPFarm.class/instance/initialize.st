as yet unclassified
initialize
	
    	super initialize.
    
    	self extent: 400@250. 
    	self color: Color lightGreen.

	self addAnimals: self class animalNamesOnFarm size.
	self animals: self submorphs.
	
	self simulateDayOnFarm.