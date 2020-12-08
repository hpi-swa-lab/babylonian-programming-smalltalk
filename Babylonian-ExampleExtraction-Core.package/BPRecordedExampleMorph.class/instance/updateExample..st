as yet unclassified
updateExample: aTopRecord
	
	| firstFoundNewExample newSpecimen |
	"aTopRecord inspect."
	aTopRecord children ifEmpty: [
		aTopRecord inspect.
		"self halt."
		UIManager default inform: 'No example was recorded.'.
		^ self].
	firstFoundNewExample := aTopRecord children first extension.
	newSpecimen := {firstFoundNewExample receiverObject. firstFoundNewExample argumentNames. firstFoundNewExample argumentObjects}.
	self example specimen: newSpecimen