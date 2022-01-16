*Babylonian-UI-code pane-override
aboutToStyle: aPluggableShoutMorphOrView
	
	"This is a notification that aPluggableShoutMorphOrView is about to re-style its text.
	Set the classOrMetaClass in aPluggableShoutMorphOrView, so that identifiers
	will be resolved correctly.
	Answer true to allow styling to proceed, or false to veto the styling"

	"-------------------- ORIGINAL CODE -----------------------------"
	| selectedMessageName showingMethod |
	self isModeStyleable ifFalse: [^false].
	selectedMessageName := self selectedMessageName.
	showingMethod := (#(Comment Definition Hierarchy) includes: selectedMessageName) not.
	"Hack!  setting classOrMetaClass: to nil allows doit or class definition colouring."
	aPluggableShoutMorphOrView classOrMetaClass: (showingMethod ifTrue: [self selectedClassOrMetaClass]).
	"-------------------- ORIGINAL CODE -----------------------------"
	
	(aPluggableShoutMorphOrView respondsTo: #selectedMethod:) ifTrue: [
		aPluggableShoutMorphOrView selectedMethod: self methodReference].
	
	"-------------------- ORIGINAL CODE -----------------------------"
	^(#(Comment Hierarchy nil) includes: selectedMessageName) not
	"-------------------- ORIGINAL CODE -----------------------------"