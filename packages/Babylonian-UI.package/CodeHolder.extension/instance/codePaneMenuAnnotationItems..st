*Babylonian-UI-annotations-menu
codePaneMenuAnnotationItems: aMenu
	
	<codePaneMenu> 
	<menuPriority: 600>
	| annotationsInSelection |
	
	self hasUnacceptedEdits ifTrue: [
		aMenu add: 'for annotations save method first' action: #yourself.	
		^ aMenu].
	
	annotationsInSelection := self annotationsInSelection.

	aMenu
		add: 'add probe (u)' action: #addProbeToSelection;
		add: 'add assertion' action: #addAssertionToSelection;
		add: 'add replacement' action: #addReplacementToSelection;
		add: 'add slider' action: #addSliderToSelection;
		add: 'add profiling probe' action: #addProfilingProbeToSelection.

	aMenu addLine.
	
	(annotationsInSelection anySatisfy: [:a | a isProbe]) ifTrue: [
		aMenu add: 'remove probe' action: #removeProbeFromSelection].
	(annotationsInSelection anySatisfy: [:a | a isAssertion]) ifTrue: [
		aMenu add: 'remove assertion' action: #removeAssertionFromSelection].
	(annotationsInSelection anySatisfy: [:a | a isReplacement]) ifTrue: [
		aMenu add: 'remove replacement' action: #removeReplacementFromSelection].
	(annotationsInSelection anySatisfy: [:a | a isSlider]) ifTrue: [
		aMenu add: 'remove slider' action: #removeSliderFromSelection].
	(annotationsInSelection anySatisfy: [:a | a isProfilingProbe]) ifTrue: [
		aMenu add: 'remove profiling probe' action: #removeProfilingProbe].
	
	^ aMenu