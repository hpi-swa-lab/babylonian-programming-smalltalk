private -ui 
displaySwimlaneFor: aBPExample in: aColumnMorph

	aColumnMorph removeAllButFirstSubmorph.
	
	(self isNilExample: aBPExample)
		ifTrue: [self removeNoneSelectedLaneIfAbundant: aColumnMorph]
		ifFalse: [ | swimlane |
			swimlane := BPSwimlane newFor: aBPExample withContext: context.
			aColumnMorph addMorphBack: swimlane.
			self startWatchingRemoveButtonActionOf: swimlane in: aColumnMorph].
	