private
containingBrowser

 	((self submorphNamed: #title) isKindOf: BPAnnotationMorph) 
		ifTrue: [ ^ (self submorphNamed: #title) containingBrowser]
		ifFalse: [ ^ nil]