as yet unclassified
testAddExampleButtonExists
	
	| process debugger addExampleButtonMaybe |
	process := [ BPClassToBeDebugged new doSomething ] newProcess.
	debugger := process debugWithTitle: 'Test' full: true.
	
	addExampleButtonMaybe := debugger dependents select: [:morph | (morph isKindOf: PluggableButtonMorphPlus) and: [morph label asSymbol = 'Add Example' asSymbol]].
	
	self assert: addExampleButtonMaybe isEmpty not.
	
	debugger ifNotNil: [debugger close].
	process ifNotNil: [process terminate].
	process := nil.
	debugger := nil.
	
	"process := [ #(1 2 3) collect: [:ea | ea odd ifTrue: [ ea ] ifFalse: [ Processor activeProcess suspend ] ] ] newProcess.
	process priority: Processor activeProcess priority + 1.
	process resume.
	
	context := process suspendedContext.
	[context selector = #collect: ] whileFalse: [context := context sender].

	debugger := process debug: context.

	self assert: debugger contextStackTop = context."