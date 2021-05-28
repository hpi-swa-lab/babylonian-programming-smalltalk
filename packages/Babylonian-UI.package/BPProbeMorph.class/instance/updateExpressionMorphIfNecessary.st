private - ui
updateExpressionMorphIfNecessary
	
	| expressionBox |
	(widgetsMorph submorphNamed: #expressionBox) ifNil: [
		widgetsMorph addMorphBack: ( 
			Morph new
				name: #expressionBox; 
				color: Color transparent; 
				changeTableLayout; 
				layoutInset: 0;
				listDirection: #leftToRight; 
				vResizing: #shrinkWrap;
				hResizing: #spaceFill;
				cellPositioning: #topLeft;
				cellGap: 1;
				yourself)].
	expressionBox := widgetsMorph submorphNamed: #expressionBox.
	
	self annotation hasExpression 
		ifTrue: [
			addExpressionMorph ifNotNil: [:aMorph | aMorph abandon].
			expressionMorph ifNil: [
				expressionMorph := self newExpressionMorph].
			expressionBox addMorphBack: expressionMorph]
		ifFalse: [
			expressionMorph ifNotNil: [:aMorph | aMorph abandon].
			addExpressionMorph ifNil: [
				addExpressionMorph := self newAddExpressionMorph].
			expressionBox addMorphBack: addExpressionMorph].