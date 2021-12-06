actions
removeButtonClicked

	| pragmaStart pragmaEnd |
	super removeButtonClicked.
	"The above call itself doesn't overwrite the source code.
	Normally, clicking on remove will delete the example morph and prompt
	the user to save the changed method. If one were to leave the method without
	saving after the above call, the pragma would still be there without a morph being
	generated (as it is removed from the trace however).
	As we do not have a text morph to call accept on, we have to delete the pragma
	from the source code ourselves."
	pragmaStart := self containedMethod getSource findString: self example asPragma startingAt: 1.
	pragmaStart = 0 ifFalse: [
		pragmaEnd := pragmaStart + self example asPragma size - 1.
		self containedMethod methodClass compile: (self containedMethod getSource 
													copyReplaceFrom: pragmaStart 
													to: pragmaEnd 
													with: '').] 
		"Might happen if the user edited the example parameters and hasn't saved yet"
		ifTrue: [self acceptChangesAtSource]. "to avoid displaying the unstyled pragma"
	