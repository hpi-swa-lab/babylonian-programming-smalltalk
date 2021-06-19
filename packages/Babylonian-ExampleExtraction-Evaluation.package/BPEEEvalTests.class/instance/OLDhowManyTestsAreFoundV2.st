eval
OLDhowManyTestsAreFoundV2
	
	| allFoundTests classes categories environment methods |
	
	"categories := {'Morphic-Basic' asSymbol}."
	categories := {'WebClient-Core' asSymbol}.
	 "categories := #(#'Kernel-Classes' #'Kernel-Exceptions' #'Kernel-Exceptions-Kernel' #'Kernel-Methods' #'Kernel-Models' #'Kernel-Numbers' #'Kernel-Numbers-Exceptions' #'Kernel-Objects' #'Kernel-Pools' #'Kernel-Processes' #'Kernel-Processes-Variables')."
	environment := self environment.
	classes := categories gather: [ :category |
		(environment organization listAtCategoryNamed: category)
			collect: [ :each | environment valueOf: each ]].
	classes := classes asSet.
	"classes := {Lalala2}."
	
	Transcript clear.
	
	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			(compiledMethod isKindOf: MsrMethodWrapper)
				ifTrue: [class methodDict at: methodSelector put: compiledMethod unwrappedMethod]]].
		
	methods := OrderedCollection new.
	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			(class = Mutex
				or: [compiledMethod isAbstract]
					or: [methodSelector = #value: and: [class = BlockClosure]])
				ifFalse: [
					methods add: {methodSelector. compiledMethod. class}]]].
		
	allFoundTests := self OLDfindAllVariantsFor: methods.
	
	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			(compiledMethod isKindOf: MsrMethodWrapper)
				ifTrue: [class methodDict at: methodSelector put: compiledMethod unwrappedMethod]]].
	
	"self writeIntoFile: allFoundTests."
	
	Transcript open.
	Transcript show: 'done'.
	
	^ allFoundTests