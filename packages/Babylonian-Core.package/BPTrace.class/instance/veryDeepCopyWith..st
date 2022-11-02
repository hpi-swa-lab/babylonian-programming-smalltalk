copying
veryDeepCopyWith: aDeepCopier
	"A trace already stores deep copies, deep copying this can lead to infinite recursions"
	^ self copy