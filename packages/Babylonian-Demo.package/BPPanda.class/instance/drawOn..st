as yet unclassified
drawOn: aCanvas
	
	|  basePos alphaCanvas |
	alphaCanvas := aCanvas asAlphaBlendingCanvas: 1.
	basePos := 400@500.

	"ears"
	alphaCanvas
			fillOval: (50@50 center: basePos) 
			color: Color black.
	alphaCanvas
			fillOval: (50@50 center: (basePos x + 80)@(basePos y)) 
			color: Color black.
	
	"head"
	alphaCanvas
			fillOval: (100@100 center: (basePos x + 45)@(basePos y + 45)) 
			color: Color white.
	
	"eyes"
	alphaCanvas
			fillOval: (20@20 center: (basePos x + 30)@(basePos y + 40)) 
			color: Color black.
	alphaCanvas
			fillOval: (20@20 center: (basePos x + 70)@(basePos y + 40)) 
			color: Color black.
	
	alphaCanvas