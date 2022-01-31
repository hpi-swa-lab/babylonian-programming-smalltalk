private - ui
removeButtonClicked

	self containingBrowser
		ifNil: [
			| browser |
			browser := ToolSet browse: self traceValue containedMethodReference actualClass 
								selector: self traceValue containedMethodReference selector.
			browser removeAnnotations: {self traceValue belongingAnnotation}.
			browser currentWindow delete]
		ifNotNil: [
			self containingBrowser removeAnnotations: {self traceValue belongingAnnotation}].