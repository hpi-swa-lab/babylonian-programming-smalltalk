accessing
splitterMorphWidth

	"Needed for calculating the new browser width with a size difference for the main browser content close to zero when opening/closing the side pane."
	^ (self currentWindow submorphs select: [:aMorph | aMorph class = ProportionalSplitterMorph]) first width