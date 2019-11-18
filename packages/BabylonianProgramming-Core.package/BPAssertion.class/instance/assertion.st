accessing
assertion
	"The script is stored as a string which contains a string 
	which evaluates to a block which either takes one or zero arguments"

	^ self otherInformation at: #that 
		ifPresent: [:assertion | assertion ifEmpty: ['[]'] ifNotEmpty: [assertion]]
		ifAbsent: ['[]']