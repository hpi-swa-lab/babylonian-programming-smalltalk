annotations menu
removeReplacementFromSelection

	self removeSelectedAnnotationsSatisfying: [:a | a isReplacement]