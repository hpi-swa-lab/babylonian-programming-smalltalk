private
acceptChangesAtSource

	self containingBrowser 
		ifNotNil: [:theBrowser | theBrowser saveMethodWithExamples]
		ifNil: [self example method bpRecompile].