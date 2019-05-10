private
rewrite: originalCode

	^ self rewriter value: (BPSmalltalkGrammar 
					match: originalCode asString 
					startingFrom: #MethodDeclaration).