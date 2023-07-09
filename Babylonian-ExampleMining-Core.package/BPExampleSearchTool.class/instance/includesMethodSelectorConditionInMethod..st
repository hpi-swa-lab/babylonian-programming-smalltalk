searching
includesMethodSelectorConditionInMethod: compiledMethod

	self includesMethodSelectorPreference ifFalse: [^ true].
	^ (compiledMethod literals includes: self method selector)