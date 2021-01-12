private
updateFrom: traces
	
	
	tracesMorph removeAllMorphs.
	self removeLinesWithoutCurrentTrace: traces.
	traces do: [:aTrace |
		(aTrace runsForBlockId: self annotation id) ifNotEmpty: [:candidateRuns | 
			| runs newLine selectedContextModel sliderMorph runLabelMorph offsetOfRuns |
			runs := self filterValues: candidateRuns throughSliderForTrace: aTrace.
			offsetOfRuns := runs ifEmpty: [0] ifNotEmpty: [(candidateRuns indexOf: runs first) - 1].
			newLine := self newExampleLineMorph
				setProperty: #bpTrace toValue: aTrace;
				yourself.
			newLine addMorphBack: (self newExampleLabelMorphFor: aTrace example).
			
			runLabelMorph := 'all' asMorph.
			
			selectedContextModel := BPObjectValueModel new.
			selectedContextModel 
				object: 0;
				onChangeBlock: [:index | |actualIndex|
					actualIndex := index = 0 ifTrue: [0] ifFalse: [offsetOfRuns + index].
					self annotation selectedContexts: (actualIndex to: actualIndex).
					self for: aTrace selectContextAt: actualIndex.
					runLabelMorph contents: ((index = 0 ifTrue: ['all'] ifFalse: [actualIndex asString]) padded: #left to: 4 with: Character space).
					selectedContextModel changed: #object].
			sliderMorph := Slider 
				on: selectedContextModel
				getValue: #object
				setValue: #object:
				min: 0
				max: runs size
				quantum: 1.
			sliderMorph 
				orientation: #horizontal;
				hResizing: #rigid;
				extent: 100@15.
				
			sliderMorph value: ((self annotation selectedContexts first between: offsetOfRuns + 1 and: offsetOfRuns + runs size) 
				ifTrue: [self annotation selectedContexts first - offsetOfRuns]
				ifFalse: [selectedContextModel object: 0. 0]).
			newLine addMorphBack: sliderMorph.
			
			newLine addMorphBack: runLabelMorph.
			
			tracesMorph addMorphBack: newLine]].