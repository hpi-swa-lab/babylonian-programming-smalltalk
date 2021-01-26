private
attributeShouldBeWritten: anAttribute

	^ writesExamples or: [
		anAttribute anchoredMorph isExample not 
			and: [anAttribute anchoredMorph isExamples not]]