accessing
model: aBPValueModel
	
	model ifNotNil: [model removeDependent: self].
	model := aBPValueModel.
	aBPValueModel addDependent: self.
	self updateLabel.