private
extractExistingExamplesMorphFrom: aText headerEndingAt: anIndex ifFound: aFoundBlock ifNone: anExceptionBlock

	^ (aText attributesAt: anIndex + 2) 
		detect: [:anAttribute | self hasExamplesMorph: anAttribute]
		ifFound: aFoundBlock
		ifNone: anExceptionBlock
					