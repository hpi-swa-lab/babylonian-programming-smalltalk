ui
addValues
	
	values collect: [:result |
					(result tracedValue 
						ifTrue: [ToolIcons testGreen] 
						ifFalse: [ToolIcons testOrange]) asMorph]
			thenDo: [:iconMorph |  self addMorphBack: iconMorph].