message list
sourceStringUnannotated

	"Adapt super to deal with actual methods, hence duplicated code"
	"Answer a copy of the source code for the selected message, transformed by diffing and pretty-printing exigencies"

	| class selector sourceString |
	class := self selectedClassOrMetaClass.
	selector := self selectedMessageName.
	(class isNil or: [selector isNil]) ifTrue: [^'missing'].
	sourceString := class ultimateSourceCodeAt: selector ifAbsent: [^'error'].
	self validateMessageSource: sourceString forSelector: selector inClass: class.
	sourceString := BPUnannotatedStyler new 
		selectedMethod: class>>selector;
		styledTextFor: sourceString.
	
	^ sourceString