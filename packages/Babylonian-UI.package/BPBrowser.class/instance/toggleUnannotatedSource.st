what to show
toggleUnannotatedSource

	| wasShowing |
	self okToChange ifTrue:
		[wasShowing := self showingUnannotated.
		self restoreTextualCodingPane.
		self showUnannotated: wasShowing not.
		self setContentsToForceRefetch.
		self contentsChanged].