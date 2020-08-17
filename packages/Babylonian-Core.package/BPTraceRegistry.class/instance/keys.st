accessing
keys

	^ mutex critical: [
		"The following implements GC of examples"
		(dictionary keys reject: [:e | e isValid]) do: [:key |
			self removeKey: key].
		dictionary keys]