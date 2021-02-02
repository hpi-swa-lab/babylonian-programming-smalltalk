private - ui
addReceiverConstructorMorph
	
	| container editField labelMorph |
	container := self newContainerMorph.
	labelMorph := 'self: ' asMorph 
			color: Color lightGray;
			borderWidth: 0;
			yourself.
	container addMorphBack: labelMorph.
	
	editField := (self
			editFieldInitialContent: self example receiverConstructorString
			onChange: [:str | 
				self example receiverConstructor: str.
				self codeContentChanged]
			onAccept: [:str |
				self containingBrowser codeTextMorph accept]).
	editField width: 240.
	container addMorphBack: editField.
			
	"Live specimen selection"
	container addMorphBack: (self newSpecimenSelectionButtonOnClick: [
				self selectLiveSpecimenThen: [:specimen |.
					self example receiverConstructor: specimen.
					self codeContentChanged.
					editField setText: self example receiverConstructorString]]).
			
	exampleSpecificMorphs addMorphBack: container.