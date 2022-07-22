what to show
showUnannotated: aBoolean

	self contentsSymbol: (aBoolean ifFalse: [#source] ifTrue: [#unannotated])