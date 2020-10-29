private
copyCompiledMethod: oldMethod
	
	| newMethod |
	self assert: oldMethod isCompiledMethod.
	
	true
		ifTrue: [
			^ oldMethod copyWithTrailerBytes: oldMethod trailer]
		ifFalse: [
			newMethod := CompiledMethod 
				newMethod: oldMethod size - oldMethod initialPC + 1
				header: "(self adjustNumTemps: oldMethod numTemps + 1 in:" oldMethod header")".
			newMethod copyFrom: oldMethod.
			^ newMethod]
	