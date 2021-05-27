calculating
scaledValueOf: aNumberInDomain
	
	
	"In case the given number is the start of the domain, meaning always at 0% of total range, we might get a ZeroDivide during
	calculations, so catch the case early by return."
	(aNumberInDomain = self domain first) ifTrue: [^ self range first]. 
	
	^ self range at: (self scaleBehavior value: self domain value: aNumberInDomain) * self range extent +1