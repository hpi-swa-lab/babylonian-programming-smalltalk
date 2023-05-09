private - ui
newLabelMorph

	| container labelSource labelFieldMorph |
	container := self newLabelContainerMorph.
		
	labelSource := self annotation hasLabel ifTrue: [self annotation label] ifFalse: [''].
	labelFieldMorph := (self 
		editFieldInitialContent: labelSource
		onChange: [:aString |
			self annotation label: aString.
			self codeContentChanged]
		onAccept: [:str | 
			self acceptChangesAtSource]).
	labelFieldMorph balloonText: 'Write a label that will be printed along the examples in the ProbeLog.'.
	labelFieldMorph hResizing: #spaceFill.
		
	container addMorph: labelFieldMorph.
	
	^ container