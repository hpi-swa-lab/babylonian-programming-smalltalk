as yet unclassified
selectExampleButtonClicked

	BPExamplesBrowserForSelecting openOnSelection: [	:anExample |
		self example referencedExample: anExample.
		selectExampleButton labelString: self referencedExampleName.]