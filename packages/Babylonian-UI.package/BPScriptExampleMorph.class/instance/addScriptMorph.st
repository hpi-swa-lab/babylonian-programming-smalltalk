private - ui
addScriptMorph

	| editField container |
	container := self newLabelContainerMorph: 'script: '.
	
	editField := (self
			editFieldStyledInitialContent: self example script
			onChange: [:str | 
				self example script: str.
				self codeContentChanged]
			onAccept: [:str |
				self acceptChangesAtSource]).
	editField balloonText: 'write a script that will be executed to trigger this method'.
	container addMorphBack: editField.
	exampleSpecificMorphs addMorphBack: container.