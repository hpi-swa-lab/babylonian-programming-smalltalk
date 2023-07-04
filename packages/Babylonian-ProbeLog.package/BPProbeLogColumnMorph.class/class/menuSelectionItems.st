accessing
menuSelectionItems

	| examples |
	examples := (BPExamples value examples asSortedCollection: [:a :b | 
			a isActive asNumber > b isActive asNumber ]) asOrderedCollection.
	examples add: #- beforeIndex: (examples findFirst: [:anExample | anExample isActive not]).

	^ {BPNilExample new}, examples