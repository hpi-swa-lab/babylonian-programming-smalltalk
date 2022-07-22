*Babylonian-Compiler-*contexts2-core-accessing method dictionary-override-override
addAndClassifySelector: selector withMethod: compiledMethod inProtocol: category notifying: requestor
	
	"This is an abomination of the Squeak Kernel code, ContextS2 code, and Babylonian Code"
	| priorMethodOrNil |
	(compiledMethod isCompiledMethod or: [
		(compiledMethod respondsTo: #isBase) and: [compiledMethod isBase]]) ifTrue: [

		"--- START OF COPIED CODE FROM SQUEAK KERNEL ---"
		priorMethodOrNil := self compiledMethodAt: selector ifAbsent: [nil].
		self addSelectorSilently: selector withMethod: compiledMethod.
		SystemChangeNotifier uniqueInstance 
			doSilently: [self organization classify: selector under: category].
		priorMethodOrNil isNil
			ifTrue: [SystemChangeNotifier uniqueInstance methodAdded: compiledMethod selector: selector inProtocol: category class: self requestor: requestor]
			ifFalse: [SystemChangeNotifier uniqueInstance methodChangedFrom: priorMethodOrNil to: compiledMethod selector: selector inClass: self requestor: requestor].
		"--- END OF COPIED CODE FROM SQUEAK KERNEL ---"
		
		"--- Babylonian code ---"
		self updateAndRemoveBPMethods: selector.
		"--- END OF Babylonian code ---"

		] ifFalse: ["dealing with a partial layer method"
			priorMethodOrNil := self layeredMethodDict at: compiledMethod asSymbol ifAbsent: [nil].
			self addSelectorSilently: selector withMethod: compiledMethod.
			SystemChangeNotifier uniqueInstance
				doSilently: [self organization classify: compiledMethod asSymbol under: category].
			priorMethodOrNil
				ifNil: [SystemChangeNotifier uniqueInstance
							methodAdded: compiledMethod method selector: compiledMethod asSymbol
							inProtocol: category class: self requestor: requestor]
				ifNotNil: [SystemChangeNotifier uniqueInstance
							methodChangedFrom: (priorMethodOrNil ifNotNil: [:pm | pm method]) to: compiledMethod method
							selector: compiledMethod asSymbol inClass: self requestor: requestor].
		].