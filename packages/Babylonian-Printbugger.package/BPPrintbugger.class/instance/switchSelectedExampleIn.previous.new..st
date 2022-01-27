private -ui 
switchSelectedExampleIn: aColumnMorph previous: oldBPExample new: newBPExample

	oldBPExample uniqueIdentifier = newBPExample uniqueIdentifier ifTrue: ["there is nothing to change" ^ self].
	
	self addExample: newBPExample.
	(self isNilExample: oldBPExample)
		ifTrue: [self addMorphFront: (self newColumnFor: newBPExample)]
		ifFalse: [self removeExample: oldBPExample.
				aColumnMorph setProperty: #displayedExample toValue: newBPExample.
				self displaySwimlaneFor: newBPExample in: aColumnMorph].