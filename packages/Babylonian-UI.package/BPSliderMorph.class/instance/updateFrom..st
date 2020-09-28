private
updateFrom: traces
	

	self removeLinesWithoutCurrentTrace: traces.
	traces do: [:aTrace |
		self haltOnce.
		(aTrace runsForBlockId: self annotation id) ifNotEmpty: [:runs | | newLine selectedContextModel sliderMorph runLabelMorph |
			newLine := self newExampleLineMorph
				setProperty: #bpTrace toValue: aTrace;
				yourself.
			newLine addMorphBack: (self newExampleLabelMorphFor: aTrace).
			
			runLabelMorph := 'all' asMorph.
			
			selectedContextModel := BPObjectValueModel new.
			selectedContextModel 
				object: 0;
				onChangeBlock: [:index | 
					self for: aTrace example selectContextAt: index.
					
					runLabelMorph contents: (index = 0 ifTrue: ['all'] ifFalse: [index asString]).
					
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
			newLine addMorphBack: sliderMorph.
			
			newLine addMorphBack: runLabelMorph.
			
			tracesMorph addMorphBack: newLine]].