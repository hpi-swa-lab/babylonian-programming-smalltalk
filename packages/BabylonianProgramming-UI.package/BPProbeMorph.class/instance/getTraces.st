private
getTraces

	^ ((((BPTraces value keys select: [:exampleReference | exampleReference actualExample isActive])
		collect: [:key | BPTraces value at: key ifAbsent: ["no trace available yet" nil]])) reject: [:v | v isNil])
		select: [:trace | trace includesValuesForProbeId: self id] 