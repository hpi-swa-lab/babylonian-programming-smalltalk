as yet unclassified
simulateDayOnFarm
	<exampleNamed: 'my farm' self: 'BPFarm new'>
	| foundAnimal position |
	
	"Farmer lets animals onto the farm for 5 rounds where they run like crazy and constantly change positions
	In between the farmer wants to lines them up and pet a certain animal"
	
	3 to: 7 do: [:i | 
		self shuffleAnimals: 5.
	
		position := i.
		foundAnimal := self findFavoriteAnimalAtPosition: position.
	
		self validate: foundAnimal atPosition: position.]