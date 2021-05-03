public
executeSimulated: aBlock
	
	"based on Context >> #trace:on"
	| prev result events simulator config |
	
	events := OrderedCollection new: 100000.
	
	prev := aBlock.
	
	config := (Smalltalk at: #RSSimulatorConfiguration) "empty" default.
	config quickSelectors addAll: ((Object methodsInCategory: #'*Babylonian-Core') collect: [:symbol | symbol -> #yesNotWrapped]).
	config quickClasses addAll: {
		BPByteCodeCallgraphTracer -> #yesNotWrapped.
		BPByteCodeCallgraphTracer class -> #yesNotWrapped}.
		
	simulator := (Smalltalk at: #RSSimulator) new.
	simulator config: config.
	result := simulator simulate: aBlock withRecorder: [:event :data | 
		event caseOf: {
			[#step] -> [ | current depth |
				current := data first.
				depth := data second.
				current ~= prev ifTrue: [ 
					prev sender ifNil: ["the previous context no longer has a sender -> it has just returned. The return value is now on top of the stack (current top)"].
					events addLast: event; addLast: data.
					prev := current]].
			"Babylonian Programming Support"
			[#probeHit] -> [events addLast: event; addLast: data].
			[#assertionHit] -> [events addLast: event; addLast: data]
		}].
	
	^ BPCallgraphFromSimulator forEvents: events andResult: result