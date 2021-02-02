serialization
asPragma
	
	"'scriptTestRef' 'active:'?"
	^ '<scriptTestRef ''{1}''{2}>' format: {
		self testRef.
		self isActive ifFalse: [''] ifTrue: [' active: true']}

