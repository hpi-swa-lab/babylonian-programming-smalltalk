private
acceptChangesAtSource

	self containingBrowser 
		ifNotNil: [:theBrowser | theBrowser codeTextMorph accept]
		ifNil: [self example method bpRecompile].