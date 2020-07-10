accessing
removeAll

	^ mutex critical: [
		self keys do: [:k | self ensureTerminatedProcessAt: k].
		dictionary removeAll]