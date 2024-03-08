ui
addValues
	
	values collect: [:result |
					((result tracedValue 
						ifTrue: [ToolIcons testGreen] 
						ifFalse: [ToolIcons testOrange]) 
							scaledToSize: BPAnnotationMorph fontHeight)
								asMorph]
			thenDo: [:iconMorph |  self addMorphBack: iconMorph].