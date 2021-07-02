as yet unclassified
addAnimals: n
	
	"Add a bunch of new animals."

    	1 to: n do: [ :index |
      	| a x |
		x := BPFarm animalTypes size.
        	a := BPFarm animalTypes at: (index \\ BPFarm animalTypes size) + 1.
        	a randomPositionIn: bounds maxVelocity: 10.
		a name: (self class animalNamesOnFarm at: index).
        	self addMorph: a].
    	self stopStepping.