as yet unclassified
menu: aMenuMorph
	
	blockIndex > 1 ifTrue: [aMenuMorph add: 'find block enter' action: #selectCorrespondingBlockEnter].
	aMenuMorph add: 'find method enter' action: #selectCorrespondingMethodEnter.
	self perform: #menu: withArguments: {aMenuMorph} inSuperclass: self class superclass superclass 