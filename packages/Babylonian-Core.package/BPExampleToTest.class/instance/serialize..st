deprecated
serialize: anExample
	"deprecated"
	
	(Object subclass: #TestTestGeneration2
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: (anExample method methodClass category asString , '-Test'))
		compile: ('test{1}<n><t>({2}) {3}' expandMacros format: {
			anExample exampleName asCamelCase.
			anExample receiverConstructor asString.
			((anExample method selector asString splitBy: ':') allButLast
				collectWithIndex: [:e :i | 
					'{1}: {2} ' format: {
						e. 
						anExample argumentScripts at: i.
					}]) 
				join.
		})
		classified: #Bla.
	