object creation
newMockObject
	
	"| mockObject |

	self receiver isNumber ifTrue: [^ self receiver].
	
	mockObject := self receiver class new.
	instVarNumbersAndValues keysAndValuesDo: [:instVarNumber :value | mockObject instVarAt: instVarNumber put: value].
	^ mockObject"