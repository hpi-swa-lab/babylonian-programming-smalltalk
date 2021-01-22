private - ui
codeContentChanged

	self containingBrowser ifNotNil: [:browser |
		browser codeTextMorph hasUnacceptedEdits: true].