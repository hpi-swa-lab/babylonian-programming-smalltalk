*Babylonian-UI-private
saveMethodWithExamples

	self codeTextMorph 
		hasUnacceptedEdits: true;
		updateStyleNow;
		flag: #workaround;"BPStyler is currently not thread-safe, make sure to terminate any background styling operations before triggering the styler again in the line."
		accept.