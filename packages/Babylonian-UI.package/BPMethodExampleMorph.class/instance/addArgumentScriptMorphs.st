private - ui
addArgumentScriptMorphs
	
	| editField labelMorph container |
	self example argumentNames withIndexDo: [:argumentName :index |
		container := self newContainerMorph.
		labelMorph := ((argumentName , ': ') asMorph 
			color: Color lightGray; 
			borderWidth: 0;
			yourself).
		container addMorphBack: labelMorph.

		"Editing field"
		editField := self
			editFieldInitialContent: (self example argumentScriptStringAt: index)
			onChange: [:str | 
				self example argumentScripts at: index put: str.
				self codeContentChanged]
			onAccept: [:str |
				self containingBrowser saveMethodWithExamples.
				false "Do not continue handling this morphs edit"].
		editField 
			balloonText: 'write code that instantiates the argument';
			width: 240.
		container addMorphBack: editField.
		
		"Live specimen editing"
		(self example isLiveSpecimenReference: (self example argumentScriptAt: index))
			ifTrue: [container addMorphBack: (self newSpecimenEditingButtonFor: (self example argumentScriptAt: index) second)].
		
		"Live specimen selection"
		container addMorphBack: (self newSpecimenSelectionButtonOnClick: [
				self selectLiveSpecimenThen: [:specimen |
					self example argumentScripts at: index put: specimen.
					self codeContentChanged.
					editField setText: (self example argumentScriptStringAt: index)]]).
		
		exampleSpecificMorphs addMorphBack: container].