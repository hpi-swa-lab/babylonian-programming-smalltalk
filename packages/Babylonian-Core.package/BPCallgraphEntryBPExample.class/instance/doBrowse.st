as yet unclassified
doBrowse
	
	| browser |
	"indirect through methodReference to call browse on the CSLayeredMethod instead of the CompiledMethod (otherwise the browser will not be able to open correctly)"
	browser := self example method methodReference browse.
	(browser isKindOf: BPBrowser) ifTrue: [
		browser allAnnotationsMorphs 
			detect: [:each | each isKindOf: BPExamplesMorph]
			ifFound: [:examplesMorph | examplesMorph submorphs 
				detect: [:each | each example == self example] 
				ifFound: [:morph | morph highlightForDrop]]]