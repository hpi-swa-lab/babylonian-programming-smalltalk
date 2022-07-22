message list
selectedMessage

	"Has to be copied from CodeHolder and get injected to check for unannotated source 
	before moving on to showingDocumentation"

	| class selector method |
	contents == nil ifFalse: [^ contents copy].

	self showingDecompile ifTrue:
		[^ self decompiledSourceIntoContents].

	class := self selectedClassOrMetaClass.
	selector := self selectedMessageName.
	method := class compiledMethodAt: selector ifAbsent: [^ ''].	"method deleted while in another project"
	currentCompiledMethod := method.
	
	"=== BABYLONIAN CODE START ==="
	self showingUnannotated ifTrue: [^ self sourceStringUnannotated].
	"=== BABYLONIAN CODE END    ==="

	^ contents := (self showingDocumentation
		ifFalse: [ self sourceStringPrettifiedAndDiffed ]
		ifTrue: [ self commentContents ])
			copy asText makeSelectorBoldIn: class