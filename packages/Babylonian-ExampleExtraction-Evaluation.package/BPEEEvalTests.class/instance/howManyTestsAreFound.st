eval
howManyTestsAreFound
	
	| allFoundTests classes categories environment |
	
	allFoundTests := OrderedCollection new.
	"categories := {'Morphic-Basic' asSymbol}."
	 categories := #(#'Kernel-Classes' #'Kernel-Exceptions' #'Kernel-Exceptions-Kernel' #'Kernel-Methods' #'Kernel-Models' #'Kernel-Numbers' #'Kernel-Numbers-Exceptions' #'Kernel-Objects' #'Kernel-Pools' #'Kernel-Processes' #'Kernel-Processes-Variables' #'KernelTests-Classes' #'KernelTests-Methods' #'KernelTests-Numbers' #'KernelTests-Objects' #'KernelTests-Processes').
	"classes := {OrderedCollection}."
	environment := self environment.
	classes := categories gather: [ :category |
		(environment organization listAtCategoryNamed: category)
			collect: [ :each | environment valueOf: each ]].
	classes := classes asSet.
	
	Transcript clear.
	
	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			(compiledMethod isKindOf: MsrMethodWrapper)
				ifTrue: [class methodDict at: methodSelector put: compiledMethod unwrappedMethod]]].
	
	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			compiledMethod isAbstract ifFalse: [
				allFoundTests add: {class. methodSelector. self allTestVariantsFor: compiledMethod}]]].
	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			(compiledMethod isKindOf: MsrMethodWrapper)
				ifTrue: [class methodDict at: methodSelector put: compiledMethod unwrappedMethod]]].
	
	self writeIntoFile: allFoundTests.
	Transcript show: 'done'.
	
	^ allFoundTests