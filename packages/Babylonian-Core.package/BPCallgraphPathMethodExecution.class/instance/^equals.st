comparing
= other

	^ other class == self class and: [other getClass == class] and: [other getSelector == selector] and: [other getBlockIdx == blockIndex]