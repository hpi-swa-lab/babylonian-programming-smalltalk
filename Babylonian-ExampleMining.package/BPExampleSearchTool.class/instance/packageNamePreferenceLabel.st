toolbuilder
packageNamePreferenceLabel

	self methodClass isMeta
		ifTrue: [^ 'Metaclass']
		ifFalse: [^ ('TestCase class package should include method class package: ', self methodClass packageInfo packageName) translated]