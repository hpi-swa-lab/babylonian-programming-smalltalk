as yet unclassified
findTestsForMethod: aSearchTerm

	| foundTests packages classes |
	"self halt."
	foundTests := OrderedCollection new.
	packages := self findCategories.
	classes := self findClassesForCategories: packages.
	classes collect: [ :class |
		class methodDict keysAndValuesDo: [:methodName :compiledMethod |
			(((methodName asString asUppercase includesSubstring: (self prettifyForMethodName: aSearchTerm))
				and: [(methodName asString includesSubstring: 'eva') not])
					and: [compiledMethod methodNode sourceText asString includesSubstring: (self prettifyForMethodSource: aSearchTerm)]) ifTrue: [
						foundTests add: class -> compiledMethod methodNode]]].
	^ foundTests