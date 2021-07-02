as yet unclassified
shuffleAnimals: aNumber
	
	| i |		
	i := 0.
	[i < aNumber] whileTrue: [
		self animals shuffle.
		Transcript show: 'shuffled Animals'.
		Transcript cr.
		i := i + 1]