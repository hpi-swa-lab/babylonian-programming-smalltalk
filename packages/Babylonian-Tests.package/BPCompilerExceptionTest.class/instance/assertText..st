assertions
assertText: textMatch
	
	text isBlock ifTrue: [
		^ self assertText: text value].
	^ (textMatch respondsTo: #matches:)
		ifTrue: [
			self assert: [textMatch matches: (self codePaneTextMorph textMorph contents) asString]]
		ifFalse: [
			self assert: textMatch equals: (self codePaneTextMorph textMorph contents) asString]