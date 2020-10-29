as yet unclassified
menu: aMenuMorph
	
	blockIndex > 1 ifTrue: [aMenuMorph add: 'find block exit' action: #selectCorrespondingBlockExit].
	aMenuMorph add: 'find method exit' action: #selectCorrespondingMethodExit.
	^ aMenuMorph