private - ui
addReceiverConstructorMorph

	| container editField |
	container :=  self newLabelContainerMorph: 'self: '.
	
	editField := (self
			editFieldStyledInitialContent: self example receiverConstructorString
			onChange: [:str | 
				self example receiverConstructor: str.
				self codeContentChanged]
			onAccept: [:str |
				self acceptChangesAtSource]).
	editField 
		balloonText: 'Write code that instantiates the receiver. 
You can also provide a selector that will be called on the
class-side of this class to create a receiver object.';
		width: 240.
	container addMorphBack: editField.
			
	"Live specimen selection"
	container addMorphBack: (self newSpecimenSelectionButtonOnClick: [
				self selectLiveSpecimen: self example receiverConstructorLiveSpecimen then: [:specimen |.
					self example receiverConstructor: specimen.
					self codeContentChanged.
					editField setText: self example receiverConstructorString]]).
			
	exampleSpecificMorphs addMorphBack: container.