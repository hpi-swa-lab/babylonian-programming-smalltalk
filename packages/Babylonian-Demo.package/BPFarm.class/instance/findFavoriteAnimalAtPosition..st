as yet unclassified
findFavoriteAnimalAtPosition: aPosition
	
	 | sortedAnimals |
	sortedAnimals := self sort: self animals asArray.

	^ sortedAnimals asOrderedCollection at: aPosition