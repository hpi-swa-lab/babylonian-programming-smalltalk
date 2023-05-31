private - ui
addScriptMorph

	| editField container |
	container := self newContainerMorph.
	container cellPositioning: #topLeft.
	container addMorphBack: ('script: ' asMorph
								color: self class textColor;
								yourself).
	
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