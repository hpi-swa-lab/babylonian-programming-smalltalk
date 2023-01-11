as yet unclassified
selectionButtonClicked

	self selectedExample ifNotNil: [
		self selectionBlock ifNotNil: [self selectionBlock value: self selectedExample].
		self changed: #close.].
	