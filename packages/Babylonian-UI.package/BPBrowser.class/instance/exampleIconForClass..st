class list
exampleIconForClass: aClass

	^ aClass theNonMetaClass bpExampleIcon ifNil: [aClass theMetaClass bpExampleIcon]