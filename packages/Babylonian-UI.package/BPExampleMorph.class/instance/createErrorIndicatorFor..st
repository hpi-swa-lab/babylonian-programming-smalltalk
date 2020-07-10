private - ui
createErrorIndicatorFor: aTrace

	| errorIndicator |
	errorIndicator := IconicButton new.
	errorIndicator 
		labelGraphic: (ToolIcons exception scaledToSize: self iconSize);
		color: Color transparent;
		borderWidth: 0;
		extent: errorIndicator extent * 0.9;
		name: 'error indicator';
		actionSelector: #errorIndicatorClicked:;
		arguments: {aTrace};
		target: self.
	^ errorIndicator