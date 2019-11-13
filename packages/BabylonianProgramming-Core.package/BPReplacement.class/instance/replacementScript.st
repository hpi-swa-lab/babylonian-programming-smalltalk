accessing
replacementScript
	"The script is stored as a string which contains a string 
	which evaluates to a block"

	^ self otherInformation at: #with ifAbsent: ['[]']