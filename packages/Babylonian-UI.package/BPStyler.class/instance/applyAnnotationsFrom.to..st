private
applyAnnotationsFrom: parseResult to: aText
	
	| annotations text |
	annotations := self extractIntervals value: parseResult.
	annotations do: [:annotation | annotation methodReference: selectedMethod].
	text := self reformat: aText basedOn: annotations.
	text := self insertExamplesMorphFrom: parseResult into: text basedOn: annotations.
	^ text