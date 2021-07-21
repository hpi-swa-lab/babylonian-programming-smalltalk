utility
defaultLabelFor: aMethodReference withExpression: anExpression
	
	"must not contain apostrophes as it breaks the storage in the pragma"
	^ '{1}>>#{2}>>{3}' format: { aMethodReference actualClass . aMethodReference selector. anExpression}.