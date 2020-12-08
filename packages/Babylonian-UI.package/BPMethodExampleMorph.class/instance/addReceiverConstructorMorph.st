private - ui
addReceiverConstructorMorph
	
	| editField |
	self addSimpleTextMorph: 'self: '.
	
	editField := (self
			editFieldInitialContent: self example receiverConstructorString
			onChange: [:str | 
				self example receiverConstructor: str.
				self codeContentChanged]
			onAccept: [:str |
				self containingBrowser codeTextMorph accept]).
	self addMorphBack: editField.
			
	self addLiveSpecimenSelectionMorphFor: editField 
		withTarget:  [
			self selectLiveSpecimenThen: [:specimen |.
				self example receiverConstructor: specimen.
				self codeContentChanged.
				editField setText: self example receiverConstructorString]].