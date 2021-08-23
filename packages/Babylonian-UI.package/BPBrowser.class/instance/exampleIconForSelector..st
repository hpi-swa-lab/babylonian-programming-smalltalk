message list
exampleIconForSelector: selector
	 
	| class method |
	class := self selectedClassOrMetaClass ifNil: [^ nil].
	method := [class >> selector] on: KeyNotFound do: [^ nil].
	
	^ method bpExampleIcon