private
fakeUnstyledCode: bpUnstyledSource in: aCueWithStyledSource during: aBlock

	| oldStyler |
	aCueWithStyledSource requestor ifNotNil: [
		oldStyler := aCueWithStyledSource requestor styler.
		aCueWithStyledSource requestor useDefaultStyler.
		aCueWithStyledSource requestor setText: bpUnstyledSource.
		aCueWithStyledSource requestor styler: oldStyler].
	
	aBlock ensure: [aCueWithStyledSource requestor ifNotNil: [
		"BPStyler is currently not thread-safe, make sure to terminate any 
		background styling operations before triggering the styler again in the line."
		aCueWithStyledSource requestor 
			updateStyleNow;
			flag: #workaround]].