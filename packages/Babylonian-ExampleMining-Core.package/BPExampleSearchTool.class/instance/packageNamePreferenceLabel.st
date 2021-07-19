toolbuilder
packageNamePreferenceLabel
	
	self method methodClass isMeta
		ifTrue: [^ 'Metaclass']
		ifFalse: [^ ('TestCase class package should include method class package: ', self method methodClass packageInfo packageName) translated]
	
	