tests-minimizing-collections
runCollection: aCollection method: selector class: class arguments: arguments

	| miniReceiver originalCollectionSize |
	self assert: self recordings isEmpty.
	originalCollectionSize := aCollection size.

	self
		recordMethod: selector
		inClass: class
		forInstancesAndParameters: (Dictionary newFromPairs: {aCollection. arguments}).

	self assert: self recordings isEmpty not.

	miniReceiver := self getMinimizedObjectsForFirstRecording first.
	self assert: miniReceiver isCollection.
	self assert: (miniReceiver isKindOf: class).
	self assert: miniReceiver size equals: originalCollectionSize.