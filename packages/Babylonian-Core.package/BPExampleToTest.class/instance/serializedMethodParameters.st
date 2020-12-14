private - serializing
serializedMethodParameters

	^ self example argumentScripts collect: [:v |
		"Escape strings"
		(v isString) ifTrue: ['''', v, ''''] ifFalse: [v]
	]