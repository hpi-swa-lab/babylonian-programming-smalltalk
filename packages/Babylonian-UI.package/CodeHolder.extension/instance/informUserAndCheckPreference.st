*Babylonian-UI-private
informUserAndCheckPreference
	
	
	| requestText noChange |
	requestText := 
'To add annotations, accept the changes to the method first. You can change the default behavior to accept on annotating by default'.
	
	noChange := UIManager default
		chooseFrom: #('Ok' 'Change to accept by default')
		values: #(true false)
		lines: #()
		title: requestText.

	^ noChange
		ifTrue: [	false]
		ifFalse: [
			BPBrowser automaticallyAcceptMethodOnAddingAnnotations: true.
			true]
		