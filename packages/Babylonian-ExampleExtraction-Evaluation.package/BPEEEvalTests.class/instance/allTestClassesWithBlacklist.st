eval
allTestClassesWithBlacklist
	
	| visible aCollection environment classes |
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
		
	aCollection := aCollection reject: [:packageName | | isNot53 |
			isNot53 := false.
			#(Nebraska SMBase SystemChangeNotification VersionNumber Shout Etoys SqueakSSL ST80 Help Multilingual SUnit VM Monticello) do: [:not53 | (packageName includesSubstring: not53) ifTrue: [isNot53 := true]].
			isNot53].
		
	aCollection := aCollection reject: [:packageName | 
			(packageName beginsWith: 'Tests-')
			or: [packageName beginsWith: 'KernelTests-Classes']
			or: [packageName beginsWith: 'KernelTests-Methods']].
	
	aCollection isEmpty 
		ifTrue: [ ^ "TestCase withAllSubclasses asSet" self halt ].
	environment := self environment.
	classes := aCollection gather: [ :category |
		((environment organization listAtCategoryNamed: category)
			collect: [ :each | environment valueOf: each ])
			select: [ :each | each includesBehavior: TestCase ] ].
	^ classes asSet