*Babylonian-UI
keyStroke: evt
	<exampleNamed: 'remove anchor' self: #anchoredMorphsInstance with: 'KeyboardEvent new
		setType: #keystroke
		buttons: 0 "no modifiers"
		position: 0@0
		keyValue: Character backspace asciiValue
		hand: nil
		stamp: Time millisecondClockValue'>                                                                     
	  
	| view previousAnchors  |
	editView deleteBalloon.
	self editor model: editView model.  "For evaluateSelection"
	view := editView.  "Copy into temp for case of a self-mutating doit"
	(acceptOnCR and: [evt keyCharacter = Character cr])
		ifTrue: [^ self editor accept].
   
	previousAnchors := text textAnchors.
	view hasUserEdited: false.
	super keyStroke: evt.
	view scrollSelectionIntoView. 
	
	(view hasUserEdited) ifTrue: [	
		| deletedAnchors | 
		deletedAnchors := previousAnchors asSet difference: text textAnchors asSet.
		deletedAnchors do: [:anchor | anchor wasRemovedFrom: text].
		view textEdited: self contents].