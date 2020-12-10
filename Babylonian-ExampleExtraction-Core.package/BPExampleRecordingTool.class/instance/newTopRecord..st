recording
newTopRecord: aTopRecord
	
	| newExample receiverSpecimen argumentSpecimen |
	"aTopRecord inspect."
	aTopRecord children ifEmpty: [
		aTopRecord inspect.
		"self halt."
		UIManager default inform: 'No example was recorded.'.
		^ self].
	
	newExample := UIManager default
		chooseFrom: (aTopRecord children collectWithIndex: [:record :index | record extension receiverObject asString, index asString])
		values: (aTopRecord children collect: [:record | record extension]).
	newExample ifNil: [^ self].
			
	receiverSpecimen := BPActiveSpecimenRegistry default storeSpecimen: newExample receiverObject.
	argumentSpecimen := newExample argumentObjects
		collect: [:argumentObject | BPActiveSpecimenRegistry default storeSpecimen: argumentObject].
	
	self exampleMorph
		setReceiverSpecimen: receiverSpecimen
		andPotentiallyArgumentSpecimen: argumentSpecimen