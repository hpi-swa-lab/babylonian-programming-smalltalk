drawing
drawBlossomsOn: aCanvas
	

	| alphaCanvas | 
	alphaCanvas := aCanvas asAlphaBlendingCanvas: 0.6.
	blossomPointsDuringDrawing do: [:blossomPoint |
		2 timesRepeat: [alphaCanvas
			fillOval: (self stemWidth asPoint center: blossomPoint + (-5 to: 5) atRandom asPoint) 
			color: Color cantaloupe]].
	  