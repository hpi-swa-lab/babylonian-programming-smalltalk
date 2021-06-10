*Babylonian-UI
rawMessageCategoryList
	
	"Copied from BPBrowser"
	| categories |
	categories := super rawMessageCategoryList.
	self hasClassSelected ifTrue: [
		(categories includes: ClassOrganizer default) ifTrue: [ |defaultCategory|
			defaultCategory := self classOrMetaClassOrganizer listAtCategoryNamed: ClassOrganizer default.
			(defaultCategory allSatisfy: [:s | s includesSubstring: '(bpInstrumented)']) ifTrue: [
				categories := categories copyWithout: ClassOrganizer default]]].
	^ categories