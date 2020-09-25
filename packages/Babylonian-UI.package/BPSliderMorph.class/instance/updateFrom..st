private
updateFrom: traces
	

	self removeLinesWithoutCurrentTrace: traces.
	traces do: [:aTrace |
		self haltOnce.
		(aTrace runsForBlockId: self annotation id) ifNotEmpty: [:runs | | newLine |
			newLine := self newExampleLineMorph
				setProperty: #bpTrace toValue: aTrace;
				yourself.
			newLine addMorphBack: (self newExampleLabelMorphFor: aTrace).
			newLine addMorphBack: runs size asString asMorph.
			tracesMorph addMorphBack: newLine]].