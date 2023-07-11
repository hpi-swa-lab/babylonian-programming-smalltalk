tests
testAddExampleButtonExists

	| process debugger addExampleButtonMaybe |
	process := [ BPExampleMiningTestClass new doSomething ] newProcess.
	debugger := BPDebugger
		openOn: process
		context: process suspendedContext
		label: 'Test'
		contents: nil
		fullView: true.

	addExampleButtonMaybe := debugger dependents select: [:morph | 
		(morph isKindOf: PluggableButtonMorphPlus) 
		and: [morph label asSymbol = 'Add Example' asSymbol]].

	self assert: addExampleButtonMaybe isEmpty not.

	debugger ifNotNil: [debugger close].
	process ifNotNil: [process terminate].
	process := nil.
	debugger := nil.