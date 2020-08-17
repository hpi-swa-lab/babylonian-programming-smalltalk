accessing
nextPutText: aText

	| previous |
	previous := #().
	self activateAttributesEnding: #() starting: previous. "for consistency"
	aText runs
		withStartStopAndValueDo: [:start :stop :attributes | 
			self
				deactivateAttributesEnding: previous starting: attributes;
				activateAttributesEnding: previous starting: attributes;
				writeContent: (aText string copyFrom: start to: stop).
			previous := attributes].
	self deactivateAttributesEnding: previous starting: #().