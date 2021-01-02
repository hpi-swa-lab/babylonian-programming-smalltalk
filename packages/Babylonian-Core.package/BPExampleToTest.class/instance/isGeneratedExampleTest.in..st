helper
isGeneratedExampleTest: aMethodName in: aClass

	|methodEntry|
	methodEntry := self methodEntryFor: aMethodName in: aClass.
	
	self assert: [methodEntry notNil].
	
	^ methodEntry getSource asString includesSubstring: (self buildComment)

	