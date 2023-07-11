minimizing
addInstVarIfAccessReadFor: aContext

	(self instVarAccessRead: aContext) ifTrue: [
			self
				addInstVar: (self instVarNumberFor: aContext)
				for: aContext receiver]