accessing
examplesToDisplayForSelection

	^ {BPNilExample new}, 
		(BPExamples value examples asSortedCollection: [:a :b | 
					a isActive asNumber > b isActive asNumber ])