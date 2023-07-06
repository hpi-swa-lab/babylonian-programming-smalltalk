examples
addExample

	| argumentSpecimen receiverSpecimen method |
	receiverSpecimen := BPSpecimenReference new
		specimen: self receiverInspector object;
		yourself.
	argumentSpecimen := self contextVariablesInspector object arguments
		collect: [:argumentObject | BPSpecimenReference new
			specimen: argumentObject;
			yourself].
	method := self selectedContext method.
	
	(method bpNewExampleFrom: BPMethodExample)
		receiverConstructor: receiverSpecimen;
		argumentScripts: argumentSpecimen;
		yourself.