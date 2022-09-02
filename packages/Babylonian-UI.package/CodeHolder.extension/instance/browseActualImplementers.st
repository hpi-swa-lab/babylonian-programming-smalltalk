*Babylonian-UI-tracing
browseActualImplementers

	| receiverInterval probe selector sendNode selectedInterval |
	BPExamples value activeExamples size = 1 ifFalse: [
		self inform: 'Actual implementers only works when there is exactly 1 active example.'.
		^ self].
	selectedInterval := self selectedInterval.
	sendNode := self determineMessageSendNodeIn: (selectedInterval start to: selectedInterval stop).
	sendNode ifNil: ["No message send found in selection" ^ self].
	 
	receiverInterval := self determineIntervalOfReceiver: sendNode.
	selector := self determineSelectorOfMessageSend: sendNode.
	
	probe := BPTemporaryProbe new
		expression: '[:result | result class]';
		yourself.
	self 
		addAnnotation: probe
		in: receiverInterval.
		
	"... wait for execution to finish ..."
	"Shitty solution for now"
	([self
		doBrowseActualImplementersFromProbe: probe
		andSelector: selector] future: 500) value.
		
	([BPExamples value doSilently: [
		self 
			removeAnnotationsSatisfying: [:a | a isProbe and: [a isTemporaryProbe]]
			at: receiverInterval start + 1]] future: 600) value. 
	