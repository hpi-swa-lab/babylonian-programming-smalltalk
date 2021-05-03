as yet unclassified
openFromBPBrowser: browser
	
	| instance |
	self assert: (browser isKindOf: BPBrowser).
	instance := self open.
	instance browser: browser.
	^ instance