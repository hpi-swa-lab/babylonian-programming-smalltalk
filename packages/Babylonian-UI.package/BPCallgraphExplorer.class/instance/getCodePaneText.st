code pane
getCodePaneText
	
	^ self codePaneMethodReference isValid ifTrue: [self codePaneMethodReference sourceCode] ifFalse: ['']