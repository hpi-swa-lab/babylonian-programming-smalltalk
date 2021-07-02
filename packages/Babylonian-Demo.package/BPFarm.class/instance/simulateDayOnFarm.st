as yet unclassified
simulateDayOnFarm
	<exampleNamed: 'some example 61' self: 'BPFarm new'>
	| foundAnimal position |
	
	"Farmer lets animals onto the farm for 5 rounds where they run like crazy and constantly change positions"
	self shuffleAnimals: 5.
	
	"At the end of the day the farmer want to pet his favorite animal but since he's very forgetful he can only remember that it's the nth animal when lining them up"
	position := 5.
	"<bpProbe id: 9297688>"foundAnimal := self findFavoriteAnimalAtPosition: position"</bpProbe>".
	
	self validate: foundAnimal atPosition: position.