as yet unclassified
findFavoriteAnimalAtPosition: aPosition
	
	 | sortedAnimals |
	"sortedAnimals := self sortAnimals: self animals asArray from: 1 to: (self class animalNamesOnFarm size)."
	sortedAnimals := self sort: self animals asArray.

	^ sortedAnimals asOrderedCollection at: aPosition