searching
canRecord: aTestSelector in: aClass includesSelectorConditionIn: aCompiledMethod  

	^ (((self includesMethodSelectorConditionInMethod: aCompiledMethod)
		and: [self tryRecordingConditionInClass: aClass testSelector: aTestSelector])
		and: [self tryCoverageConditionInClass: aClass testSelector: aTestSelector])