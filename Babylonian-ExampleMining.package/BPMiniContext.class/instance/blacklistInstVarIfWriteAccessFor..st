minimizing
blacklistInstVarIfWriteAccessFor: aContext

	(self instVarWriteAccess: aContext) ifTrue: [
			self
				blacklistInstVar: (self instVarNumberFor: aContext)
				for: aContext receiver]