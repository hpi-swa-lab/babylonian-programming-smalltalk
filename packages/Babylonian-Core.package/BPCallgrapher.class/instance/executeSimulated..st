public
executeSimulated: aBlock
	
	"based on Context >> #trace:on"
	| prev result events simulator |
	
	events := OrderedCollection new: 100000.
	
	prev := aBlock.
	simulator := RSSimulator new.
	simulator config: RSSimulatorConfiguration babylonian.
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