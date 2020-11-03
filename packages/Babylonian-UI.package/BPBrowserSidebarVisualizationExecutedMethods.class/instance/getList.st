as yet unclassified
getList
	
	^ self getMethods collect: [:each | (each label splitBy: String tab) first]