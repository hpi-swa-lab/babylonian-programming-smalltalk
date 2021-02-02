accessing
model: aModel
	
	model ifNotNil: [model removeDependent: self].
	aModel ifNotNil: [aModel addDependent: self].
	model := aModel.