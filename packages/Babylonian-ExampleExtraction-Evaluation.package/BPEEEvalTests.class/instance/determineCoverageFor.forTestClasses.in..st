eval
determineCoverageFor: targetClasses forTestClasses: allTestClasses in: allFoundTests
	
	| testMethods targetMethodsReferences |
	testMethods := Dictionary new.
	allTestClasses do: [:testClass | testClass methodDict
		keysDo: [:testMethodSelector |
			(testMethodSelector beginsWith: 'test') ifTrue: [
				testMethods at: testMethodSelector put: testClass]]].
	targetMethodsReferences := OrderedCollection new.
	targetClasses do: [:targetClass | targetClass methodDict
		valuesDo: [:targetCompiledMethod |
			targetMethodsReferences add: targetCompiledMethod methodReference]].
	
	testMethods keysAndValuesDo: [:testMethodSelector :testClass | | coverages "fileStream" |
		"fileStream := FileDirectory default fileNamed: 'tmp_log.txt'.
		fileStream truncate: 0.
		fileStream reset.
		fileStream
			nextPutAll: testClass printString, '>>', testMethodSelector asString, '. ';
			nextPutAll: Character cr asString.
		fileStream close."
			
		coverages := Dictionary new.
		targetMethodsReferences do: [:targetMethodsReference |
			coverages at: targetMethodsReference put: (TestCoverage on: targetMethodsReference)].
		coverages valuesDo: [:coverage | coverage install].
		testClass run: testMethodSelector.
		coverages keysAndValuesDo: [:targetMethodsReference :coverage |
			coverage uninstall.
			coverage hasRun ifTrue: [ | it |
				it := (allFoundTests select: [:each |
					(each at: self methodSelectorKey) = targetMethodsReference selector
					and: [(each at: self classKey) asSymbol = targetMethodsReference classSymbol]]) first.
				it at: self keyCoverage put: (it at: self keyCoverage) + 1.
				(testClass packageInfo packageName includesSubstring: (targetMethodsReference compiledMethod methodClass packageInfo packageName splitBy: '-') first)
					ifTrue: [
						it at: self keyCoveragePackageName put: (it at: self keyCoveragePackageName) + 1]]]].