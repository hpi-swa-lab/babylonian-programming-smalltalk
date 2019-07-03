private
annotationsInSelection

	| annotations |
	annotations := Set new.
	self codeTextMorph selectionInterval do: [:index |
		self codeTextMorph text attributesAt: index do: [:attr |
			((attr isKindOf: TextAnchor) and: [attr anchoredMorph isBPAnnotationMorph])
				ifTrue: [annotations add: attr anchoredMorph annotation]]].
	^ annotations