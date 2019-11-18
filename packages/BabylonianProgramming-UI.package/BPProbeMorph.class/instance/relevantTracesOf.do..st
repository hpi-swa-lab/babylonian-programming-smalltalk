private - ui
relevantTracesOf: traces do: aBlock

	^ (traces select: [:trace | (trace valuesForProbeId: self id) notEmpty]) do: aBlock