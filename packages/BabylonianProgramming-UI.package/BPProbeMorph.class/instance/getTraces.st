private
getTraces

	^ BPTraces value select: [:trace | trace includesValuesForProbeId: self id]