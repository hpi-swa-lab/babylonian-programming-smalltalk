private - ui
addSwimlane

	self example isNilExample
		ifFalse: [ | swimlane |
			swimlane := BPSwimlane newFor: self example withContext: self context.
			self addMorphBack: swimlane.
			self startWatchingRemoveButtonActionOf: swimlane].