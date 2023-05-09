actions
removeButtonClicked

	self containingBrowser
		ifNil: [
			| browser |
			browser := ToolSet browse: traceValue containedMethodReference actualClass 
								selector: traceValue containedMethodReference selector.
			browser removeAnnotations: {traceValue belongingAnnotation}.
			browser currentWindow delete]
		ifNotNil: [
			| currentMethodReference |
			currentMethodReference := self containingBrowser methodReference.
			self containingBrowser browseReference: traceValue containedMethodReference.
			self containingBrowser removeAnnotations: {traceValue belongingAnnotation}.
			self containingBrowser browseReference: currentMethodReference].