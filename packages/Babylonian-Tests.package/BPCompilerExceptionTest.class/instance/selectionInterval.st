emulating
selectionInterval

	^ selectionInterval ifNil: [1 to: self text size]