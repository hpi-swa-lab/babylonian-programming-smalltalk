eval
OLDfindAllVariantsFor: methods
	
	| foundTests packages classes |
	
	foundTests := Dictionary new.
	methods
		do: [ :selectorAndMethodAndClass | foundTests at: selectorAndMethodAndClass first put: Dictionary new].
	
	packages := self findCategories.
	classes := self findClassesForCategories: packages.
	
	classes := classes reject: [:class | class = AllocationTest
		or: [class = ClassBuilderTest]
		or: [class = CompiledMethodComparisonTest]].
	foundTests valuesDo: [:dictionary |
		classes do: [:testClass |
			testClass methodDict keysDo: [:methodSelector |
				(methodSelector beginsWith: 'test') ifTrue: [
					dictionary at: methodSelector put: Dictionary new]]]].
	
	classes do: [:testClass |
		testClass methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			methods do: [ :selectorAndMethodAndClass | | targetMethod targetMethodSelector |
				targetMethodSelector := selectorAndMethodAndClass first.
				targetMethod := selectorAndMethodAndClass second.
				(methodSelector beginsWith: 'test') ifTrue: [
					self haltOnce.
					((foundTests at: targetMethodSelector) at: methodSelector)
						at: #packageName
						put: (testClass packageInfo packageName
							includesSubstring: (targetMethod methodClass packageInfo packageName splitBy: '-') first).
					((foundTests at: targetMethodSelector) at: methodSelector)
						at: #className
						put: (testClass name asString includesSubstring: targetMethod methodClass name asString).
					((foundTests at: targetMethodSelector) at: methodSelector)
						at: #literal
						put: (compiledMethod literals includes: targetMethod selector)]]].
			
		(testClass packageInfo packageName includesSubstring: (methods first second methodClass packageInfo packageName splitBy: '-') first) ifTrue: [
			testClass methodDict keysDo: [:methodSelector | | coverages |
				coverages := Dictionary new.
				methods do: [ :selectorAndMethodAndClass | | targetMethod targetMethodSelector |
					targetMethodSelector := selectorAndMethodAndClass first.
					targetMethod := selectorAndMethodAndClass second.
					coverages at: targetMethodSelector put: (TestCoverage on: targetMethod methodReference).
					coverages do: [:coverage | coverage install]].
				
				testClass run: methodSelector.
				
				methods do: [ :selectorAndMethodAndClass | | targetMethodSelector |
					targetMethodSelector := selectorAndMethodAndClass first.
					coverages do: [:coverage |
						coverage uninstall.
						((foundTests at: targetMethodSelector) at: methodSelector)
							at: #coverage
							put: coverage hasRun]]]]].
	^ foundTests