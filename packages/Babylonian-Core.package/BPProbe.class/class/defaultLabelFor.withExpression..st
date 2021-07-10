utility
defaultLabelFor: aMethodReference withExpression: anExpression
	
	^ '{1}>>#{2}>>''{3}''' format: { aMethodReference actualClass . aMethodReference selector. anExpression}.