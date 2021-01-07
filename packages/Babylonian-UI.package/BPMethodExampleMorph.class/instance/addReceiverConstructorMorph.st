private - ui
addReceiverConstructorMorph
	
	| editField |
	self addMorphBack: ('self: ' asMorph 
			color: Color lightGray;
			borderWidth: 0;
			yourself).
	
	editField := (self
			editFieldInitialContent: self example receiverConstructorString
			onChange: [:str | 
				self example receiverConstructor: str.
				self codeContentChanged]
			onAccept: [:str |
				self containingBrowser codeTextMorph accept]).
	self addMorphBack: editField.
			
	"Live specimen selection"
	self addMorphBack: (self newSpecimenSelectionButtonOnClick: [
				self selectLiveSpecimenThen: [:specimen |.
					self example receiverConstructor: specimen.
					self codeContentChanged.
					editField setText: self example receiverConstructorString]]).