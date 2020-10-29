as yet unclassified
eventsToString
	
	^ String streamContents: [:aStream |
		events pairsDo: [:event :data | event caseOf: {
			[#step] -> [ | current depth methodClass receiverClass |
				current := data first.
				depth := data second.
				
				1 to: depth do: [:i | aStream space].
				"Context carefullyPrint: current receiver on: aStream."
				methodClass := current method methodClass.
				receiverClass := current receiver class.
				
				current isClosureContext ifTrue: [aStream nextPutAll: '[] '].
				
				aStream nextPutAll: receiverClass name.
				receiverClass == methodClass ifFalse: [
					aStream 
						nextPut: $(;
						nextPutAll: methodClass name;
						nextPut: $)].
					
				aStream
					space; 
					nextPutAll: current selector;
					space.
				
				aStream 
					nextPutAll: '<ctx id: ';
					nextPutAll: current identityHash asString.

				current isClosureContext ifTrue: [
					aStream 
						nextPutAll: ' outer id: '; 
						nextPutAll: current outerContext identityHash asString].
					
				aStream nextPut: $>.
					
				aStream cr].
			[#probeHit] -> [aStream nextPutAll: 'PROBE HIT: '; nextPutAll: data first asString; cr].
			[#assertionHit] -> [aStream nextPutAll: 'ASSERTION HIT'; nextPutAll: data first asString; cr]
			}].
		aStream flush]