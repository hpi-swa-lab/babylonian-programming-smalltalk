actions
activateExampleButtonClicked
	
	self example toggleIsActive.
	(self valueOfProperty: #bpExampleIsNew ifAbsent: false)
		ifTrue: [
			self removeProperty: #bpExampleIsNew.
			self containingBrowser saveMethodWithExamples]
		ifFalse: [
			self example isActive ifTrue: [
				self example traceInBackground]]
	