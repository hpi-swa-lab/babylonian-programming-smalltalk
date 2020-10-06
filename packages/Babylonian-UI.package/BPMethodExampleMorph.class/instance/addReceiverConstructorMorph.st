private - ui
addReceiverConstructorMorph
	
	| editField |
	self addMorphBack: ('self: ' asMorph color: Color lightGray; yourself).
	
	editField := (self
			editFieldInitialContent: self example receiverConstructorString
			onChange: [:str | 
				self example receiverConstructor: str.
				self codeContentChanged]
			onAccept: [:str |
				self containingBrowser codeTextMorph accept]).
	self addMorphBack: editField.
			
	"Live specimen selection - Copied from addArgumentScriptMorphs"
		self addMorphBack: (SimpleButtonMorph new
			height: self smallFontHeight;
			color: self color;
			borderWidth: 2;
			label: 's';
			target: [
				self selectLiveSpecimenThen: [:specimen |.
					self example receiverConstructor: specimen.
					self codeContentChanged.
					editField setText: self example receiverConstructorString]];
			actionSelector: #value;
			yourself)