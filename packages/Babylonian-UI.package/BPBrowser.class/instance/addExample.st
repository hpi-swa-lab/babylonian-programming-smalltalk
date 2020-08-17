annotations menu
addExample
	<exampleNamed: 'current browser' self: '(ActiveWorld submorphsSatisfying: [:m | m isSystemWindow and: [m hasProperty: #isRunningExample]]) first model'>                                                                                                                           
	| exampleIntervals endOfLastExample endOfLastExampleLine resultText  newExample  newExampleName exampleAnnotation newSourceSnippet|
	exampleIntervals := self codeTextMorph text textAnchorIntervals associations 
		select: [:assoc | assoc key anchoredMorph isExample]
		thenCollect: [:assoc | assoc value].
		
	endOfLastExample := exampleIntervals detectMax: [:interval | interval stop].
	endOfLastExample isEmptyOrNil ifTrue: ["Add somewhere else". ^ false].
	endOfLastExampleLine := self codeTextMorph text asString indexOf: Character cr startingAt: endOfLastExample last.
		 
	newExampleName := 'some example ' , exampleIntervals size asString.
	newExample := (BPExample newFor: self compiledMethod)
		exampleName: newExampleName;
		yourself.
	self compiledMethod bpExamples add: newExample.
		
	exampleAnnotation := BPExampleAnnotation new
		exampleName: newExampleName;
		methodReference: self methodReference;
		yourself.
		 
	newSourceSnippet := String cr asText , String tab , (Character startOfHeader asText), String cr asText.
	newSourceSnippet addAttribute: (BPTextAnchor new anchoredMorph: exampleAnnotation asMorph; yourself) from: 2 to: 2.
	newSourceSnippet.
	resultText := self codeTextMorph text 
		replaceFrom: endOfLastExampleLine 
		to: endOfLastExampleLine
		with: newSourceSnippet.
		
	(self codeTextMorph) 
		setText: resultText;
		hasUnacceptedEdits: true;
		accept.
		