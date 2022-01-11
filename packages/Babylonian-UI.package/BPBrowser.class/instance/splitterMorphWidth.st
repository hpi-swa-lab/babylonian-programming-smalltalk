accessing
splitterMorphWidth

	^ (self currentWindow submorphs select: [:morph | morph class = ProportionalSplitterMorph]) first width