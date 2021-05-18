object creation
objectIsLeaf: anObject
	
	^ anObject isLiteral or: [anObject isPoint]
	"What about isCompiledCode?"
	"anObject isBoolean or: [anObject isNumber] or: [anObject isCharacter] or: [anObject isSymbol]"