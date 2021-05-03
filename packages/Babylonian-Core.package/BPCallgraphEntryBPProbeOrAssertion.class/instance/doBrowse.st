as yet unclassified
doBrowse
	
	| browser |
	browser := self traceValue methodReference browse.
	(browser isKindOf: BPBrowser) ifTrue: [
		browser allAnnotationsMorphs detect: [:each | each id == self id] ifFound: [:morph | morph blinkFor: 2 seconds]]