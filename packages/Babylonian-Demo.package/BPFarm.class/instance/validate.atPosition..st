as yet unclassified
validate: anAnimal atPosition: aPosition
	
	"do NOT change validation method"
	| isSuccessful |
	"<bpProbe id: 718323 label: 'found correct animal?'>"isSuccessful := anAnimal name = (self class animalNamesOnFarm asSortedCollection at: aPosition)"</bpProbe>".
	
	"DON'T open a Transscript!"
	Transcript show: (isSuccessful
		ifTrue: ['famer happily pets his favorite animal ', anAnimal name, ' the ', anAnimal type]
		ifFalse: ['the farmer is very very sad today']).
	Transcript cr.