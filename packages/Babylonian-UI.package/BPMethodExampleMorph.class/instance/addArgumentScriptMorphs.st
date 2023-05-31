private - ui
addArgumentScriptMorphs

	| editField labelMorph container |
	self example argumentNames withIndexDo: [:argumentName :index |
		container := self newContainerMorph.
		container cellPositioning: #topLeft.
		labelMorph := ((argumentName , ': ') asMorph 
			color: self class textColor; 
			borderWidth: 0;
			yourself).
		container addMorphBack: labelMorph.

		"Editing field"
		editField := self
			editFieldStyledInitialContent: (self example argumentScriptStringAt: index)
			onChange: [:str | 
				self example argumentScripts at: index put: str.
				self codeContentChanged]
			onAccept: [:str |
				self acceptChangesAtSource.
				false "Do not continue handling this morphs edit"].
		editField 
			balloonText: 'write code that instantiates the argument';
			width: 240.
		container addMorphBack: editField.
		
		"Live specimen selection"
		container addMorphBack: (self newSpecimenSelectionButtonOnClick: [
				self selectLiveSpecimen: (self example liveSpecimenAt: index) then: [:specimen |
					self example argumentScripts at: index put: specimen.
					self codeContentChanged.
					editField setText: (self example argumentScriptStringAt: index)]]).
		
		exampleSpecificMorphs addMorphBack: container].