adding examples
containsTestMethod
	
	| method |
	method := self containingBrowser compiledMethod.
	^ (method selector asString includesSubstring: 'test')
		and: (method methodClass inheritsFrom: TestCase)