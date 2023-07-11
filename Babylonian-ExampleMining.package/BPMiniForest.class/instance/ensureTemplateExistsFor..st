record mock
ensureTemplateExistsFor: anObject

	^ objectTemplateMapping
		at: anObject
		ifAbsentPut: [anObject bpMiniTemplateClass for: anObject in: self]