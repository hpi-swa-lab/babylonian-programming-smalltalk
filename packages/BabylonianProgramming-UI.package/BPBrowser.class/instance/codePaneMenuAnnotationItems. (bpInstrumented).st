as yet unclassified
codePaneMenuAnnotationItems: aMenu
<layer: #bpInstrumented>
< codePaneMenu > < menuPriority: 400 >
| annotationsInSelection |  aMenu add: 'add example' action: #addExample ; add: 'add probe' action: #addProbeToSelection ; add: 'add assertion' action: #addAssertionToSelection ; add: 'add replacement' action: #addReplacementToSelection.
aMenu addLine.
annotationsInSelection := (self bpTrace: [self annotationsInSelection] forProbe: 2372880 inContext: thisContext).
( annotationsInSelection anySatisfy: [ :a | a isProbe ] ) ifTrue: [  aMenu add: 'remove probe' action: #removeProbeFromSelection ].
( annotationsInSelection anySatisfy: [ :a | a isAssertion ] ) ifTrue: [  aMenu add: 'remove assertion' action: #removeAssertionFromSelection ].
( annotationsInSelection anySatisfy: [ :a | a isReplacement ] ) ifTrue: [  aMenu add: 'remove replacement' action: #removeReplacementFromSelection ].
 ^ aMenu