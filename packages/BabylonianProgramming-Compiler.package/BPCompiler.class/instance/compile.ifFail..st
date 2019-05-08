as yet unclassified
compile: aCue ifFail: failBlock 

	^ super compile: aCue ifFail: failBlock

	"| newCode rewriter |
	rewriter := (OhmSmalltalk synthesizedAttribute: HomeInstanceVariableAccess new)
		variablesToBeReplaced: ((aCue getClass instVarNames) collect: [:s | s asSymbol]);
		yourself.
	self halt.
	newCode := rewriter value: (OhmSmalltalk 
					match: aCue sourceStream contents asString 
					startingFrom: #MethodDeclaration).
	
	^ super compile: (CompilationCue
						source: newCode
						class: aCue getClass
						environment: aCue environment
						requestor: aCue requestor)
			ifFail: failBlock"