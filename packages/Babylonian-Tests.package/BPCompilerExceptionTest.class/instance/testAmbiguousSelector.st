tests
testAmbiguousSelector

	| expectedString |
	self codePaneTextMorph textMorph contents append: '\^1@-1' withCRs.
	text append:  '\^1@-1' withCRs.	
	expectedString :=  ('someMethod\\	\^1@ -1') withCRs.
	self 
		compiling: text
		shouldRaise: AmbiguousSelector
		andSelect: '@-'
		testing: {
			[:ex | ex resume] -> [self assertCanceled].
			[:ex | ex resume: '@ -'] -> expectedString }.