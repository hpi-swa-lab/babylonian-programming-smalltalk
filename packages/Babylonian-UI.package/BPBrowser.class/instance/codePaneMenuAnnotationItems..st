annotations menu
codePaneMenuAnnotationItems: aMenu
	                  
	<codePaneMenu> 
	<menuPriority: 400>
	| annotationsInSelection |
	
	self hasUnacceptedEdits ifTrue: [
		aMenu add: 'for annotations save method first' action: #yourself.	
		^ aMenu].
	
	annotationsInSelection := self annotationsInSelection.

	annotationsInSelection ifEmpty: [
		aMenu
			add: 'add probe (u)' action: #addProbeToSelection;
			add: 'add assertion' action: #addAssertionToSelection;
			add: 'add replacement' action: #addReplacementToSelection].

	aMenu addLine.
	
	(annotationsInSelection anySatisfy: [:a | a isProbe]) ifTrue: [
		aMenu add: 'remove probe' action: #removeProbeFromSelection].
	(annotationsInSelection anySatisfy: [:a | a isAssertion]) ifTrue: [
		aMenu add: 'remove assertion' action: #removeAssertionFromSelection].
	(annotationsInSelection anySatisfy: [:a | a isReplacement]) ifTrue: [
		aMenu add: 'remove replacement' action: #removeReplacementFromSelection].
	
	^ aMenu