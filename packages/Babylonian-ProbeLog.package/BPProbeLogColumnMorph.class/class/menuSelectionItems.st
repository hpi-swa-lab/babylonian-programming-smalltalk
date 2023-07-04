accessing
menuSelectionItems

	| examples firstInactiveIndex |
	examples := (BPExamples value examples asSortedCollection: [:a :b | 
			a isActive asNumber > b isActive asNumber ]) asOrderedCollection.
	firstInactiveIndex := examples findFirst: [:anExample | anExample isActive not].
	(firstInactiveIndex == 0) ifTrue: [firstInactiveIndex := 1].
	examples add: #- beforeIndex: firstInactiveIndex.

	^ {BPNilExample new}, examples