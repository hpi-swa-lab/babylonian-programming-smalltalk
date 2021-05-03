as yet unclassified
keyPressed: aChar
	
	aChar == $b ifTrue: [self doBrowse].
	aChar == $i ifTrue: [self traceValue tracedValue inspect].
	aChar == $I ifTrue: [self traceValue tracedValue explore].