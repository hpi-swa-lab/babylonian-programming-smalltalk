as yet unclassified
annotationsInSelection
<layer: #bpInstrumented>

| annotations interval |  annotations := Set new.
interval := self codeTextMorph selectionInterval.
( interval start   to: interval stop + 1 ) do: [ :index | self codeTextMorph text  attributesAt: index do: [ :attr | ( ( attr isKindOf: TextAnchor ) and: [  attr anchoredMorph isBPAnnotationMorph ] ) ifTrue: [  annotations add: attr anchoredMorph annotation ] ] ].
 ^ (self bpTrace: [annotations] forProbe: 5008018 inContext: thisContext)