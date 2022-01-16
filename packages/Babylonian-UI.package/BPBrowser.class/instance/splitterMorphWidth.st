accessing
splitterMorphWidth

	^ (self currentWindow submorphs select: [:aMorph | aMorph class = ProportionalSplitterMorph]) first width