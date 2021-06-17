eval
numberOfAllTests
	
	| visible aCollection environment classes foundTests |
	visible := Set new.
	TestCase withAllSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	aCollection := Array streamContents: [ :stream |
		self environment organization categories do: [ :each |
			(visible includes: each)
				ifTrue: [ stream nextPut: each ] ] ].
	 aCollection := aCollection reject: [:packageName | | isNot53 |
			isNot53 := false.
			#(CoolTestStuff STON RoelTyper MonticelloTonel INIFile DiffMerge FS VersionControl Squot FileSystem Squit Babylonian ContextS2 JSON Ohm MethodWrapper Scamper HTML VAX GM) do: [:not53 | (packageName includesSubstring: not53) ifTrue: [isNot53 := true]].
			isNot53].
	
	aCollection isEmpty 
		ifTrue: [ ^ "TestCase withAllSubclasses asSet" self halt ].
	environment := self environment.
	classes := aCollection gather: [ :category |
		((environment organization listAtCategoryNamed: category)
			collect: [ :each | environment valueOf: each ])
			select: [ :each | each includesBehavior: TestCase ] ].
	classes asSet.
	
	foundTests := OrderedCollection new.

	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			foundTests add: class name asString -> methodSelector]].
	
	^ foundTests size