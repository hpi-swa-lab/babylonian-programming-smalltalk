drag and drop
dropOnMessageCategories: aMethodReference at: anIndex
	
	"As we work with CSMethodObjects instead of CompiledMethods diretly, this is the same 
	as CSBrowser handles drag and drop"
	| targetClass targetCategory |
	aMethodReference isContextSMethod ifTrue: [
		targetClass := self selectedClassOrMetaClass.
		(targetClass == aMethodReference methodClass)
			ifTrue: [
				targetCategory := self messageCategoryList at: anIndex.
				targetCategory = ClassOrganizer allCategory ifTrue: [^ false].
				targetClass organization classify: aMethodReference asSymbol under: targetCategory.
				^ true]
			ifFalse: [^ self inform: 'Can only move partial methods within a class']].
	^ super dropOnMessageCategories: aMethodReference at: anIndex