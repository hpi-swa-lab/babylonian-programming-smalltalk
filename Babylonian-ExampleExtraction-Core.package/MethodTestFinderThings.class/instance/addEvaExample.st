as yet unclassified
addEvaExample
	<exampleNamed: 'current browser' self: '(ActiveWorld submorphsSatisfying: [:m | m isSystemWindow and: [m hasProperty: #isRunningExample]]) first model'>
	| exampleIntervals endOfLastExample endOfLastExampleLine resultText  newExample  newExampleName exampleAnnotation newSourceSnippet potentialExamples potentialExamplesIdentifiers potentialNewExample searchTerm|
	exampleIntervals := self codeTextMorph text textAnchorIntervals associations 
		select: [:assoc | assoc key anchoredMorph isExample]
		thenCollect: [:assoc | assoc value].
		
	endOfLastExample := exampleIntervals detectMax: [:interval | interval stop].
	endOfLastExample isEmptyOrNil ifTrue: ["Add somewhere else". ^ false].
	endOfLastExampleLine := self codeTextMorph text asString indexOf: Character cr startingAt: endOfLastExample last.
		 
	newExampleName := 'some example ' , exampleIntervals size asString.
	searchTerm := UIManager default request: 'SearchTerm'.
	searchTerm ifEmpty: [^ self].
	searchTerm := searchTerm asSymbol.
	potentialExamples := MethodTestFinderThings getExamplesFor: self compiledMethod for: searchTerm.
	potentialExamplesIdentifiers := potentialExamples collect: [:each | each exampleName].
	potentialNewExample := UIManager default chooseFrom: potentialExamplesIdentifiers values: potentialExamples.
	potentialNewExample ifNil: [^ self].
	
	newExample := (BPExample newFor: self compiledMethod)
		exampleName: newExampleName;
		yourself.
	
	potentialNewExample arguments doWithIndex: [:each :index |
		newExample argumentScripts at: index put: each].
	
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
		