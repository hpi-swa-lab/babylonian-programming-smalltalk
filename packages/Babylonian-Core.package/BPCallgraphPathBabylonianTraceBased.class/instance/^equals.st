comparing
= other

	^ (other isKindOf: self class) and: [other id == id]