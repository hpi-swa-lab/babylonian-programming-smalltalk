*Babylonian-UI-contexts2-core-listing-override
methods
	
	^  ((
	"-- START COPIED CODE --"
	(self extensionMethods, self coreMethods) select: [:method |
		method isValid
			and: [method isLocalSelector]]
	"-- END COPIED CODE --"
	) select: [:method || compiledMethod |
		compiledMethod := method compiledMethod.
		compiledMethod isCompiledMethod or: [
		compiledMethod  isContextSMethod and: [compiledMethod hasBaseMethod]]]),
	(self layeredMethods reject: [:m | m method layers includes: #bpInstrumented])