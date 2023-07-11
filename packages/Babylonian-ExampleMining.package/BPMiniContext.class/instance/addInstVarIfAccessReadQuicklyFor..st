minimizing
addInstVarIfAccessReadQuicklyFor: aContext

	| getterMethod |
	(self instVarAccessReadQuick: aContext) ifTrue: [
		getterMethod := self getterMethodFor: aContext.
		self
			addInstVar: (self instVarNumberForGetter: getterMethod)
			for: (self getterReceiverFor: aContext)]