as yet unclassified
step
	
	| traces |
	self methodReference ifNil: [^ false].
	traces := self methodReference compiledMethod baseMethod propertyValueAt: #bpTrace.
	traces ifNotNil: [
		self removeAllMorphs.
		traces do: [:t | | valueMorph |
			valueMorph :=  (t example exampleName , ': ' , (((t valuesForProbeId: self probeId) collect: [:v | v tracedValue]) joinSeparatedBy: ', ')) asMorph.
			self addMorph: valueMorph]].