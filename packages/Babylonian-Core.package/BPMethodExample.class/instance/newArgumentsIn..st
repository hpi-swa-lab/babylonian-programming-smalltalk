accessing
newArgumentsIn: aMethodExampleRunState

	^ (argumentScripts first: self argumentNames size) 
		collect: [:script | 
			script isLiveSpecimenReference
				ifTrue: [self resolveLiveSpecimen: script]
				ifFalse: [Compiler 
							evaluate: script 
							for: self method methodClass
							notifying: aMethodExampleRunState]]