private
parse: code

	^ BPSmalltalkGrammar
				match: code
				startingFrom: #MethodDeclaration.