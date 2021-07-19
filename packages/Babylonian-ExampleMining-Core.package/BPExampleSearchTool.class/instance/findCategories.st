searching
findCategories
	
	"see TestRunner"

	| visible result |
	visible := Set new.
	self testBaseClass withAllSubclassesDo: [ :each |
		each category ifNotNil: [ :category |
			visible add: category ] ].
	result := Array streamContents: [ :stream |
		self environment organization categories do: [ :each |
			(visible includes: each)
				ifTrue: [ stream nextPut: each ] ] ].
		
	evalOnlyBase53
		ifTrue: [result := result reject: [:packageName | | isNot53 |
			isNot53 := false.
			#(CoolTestStuff STON RoelTyper MonticelloTonel INIFile DiffMerge FS VersionControl Squot FileSystem Squit Babylonian ContextS2 JSON Ohm MethodWrapper Scamper HTML VAX GM) do: [:not53 | (packageName includesSubstring: not53) ifTrue: [isNot53 := true]].
			isNot53]].
	
	evalOnlyBase53
		ifTrue: [result := result reject: [:packageName | | isNot53 |
			isNot53 := false.
			#(Nebraska SMBase SystemChangeNotification VersionNumber Shout Etoys SqueakSSL ST80 Help Multilingual SUnit VM Monticello) do: [:not53 | (packageName includesSubstring: not53) ifTrue: [isNot53 := true]].
			isNot53]].
	
	evalOnlyBase53
		ifTrue: [result := result reject: [:packageName | 
			(packageName beginsWith: 'Tests-')
			or: [packageName beginsWith: 'KernelTests-Classes']
			or: [packageName beginsWith: 'KernelTests-Methods']]].
	
	^ result