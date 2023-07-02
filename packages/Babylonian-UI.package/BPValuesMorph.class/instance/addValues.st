ui
addValues
	
	values 
		do: [:v | self addMorphBack: (self valueMorphFor: v)]
		separatedBy: [self addMorphBack: (', ' asMorph
						color: self class textColor;
						yourself)].