serialization
asPragma
	
	"'testRef' 'active:'?"
	^ '<testRef: ''{1}''{2}>' format: {
		self testRef.
		self isActive ifFalse: [''] ifTrue: [' active: true']}
