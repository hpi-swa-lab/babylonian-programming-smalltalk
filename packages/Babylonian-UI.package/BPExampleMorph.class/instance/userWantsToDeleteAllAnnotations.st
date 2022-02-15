testing
userWantsToDeleteAllAnnotations

	"returns true or false depending on the user's decision in the dialog"
	^ DialogWindow new 
		message: 'Are you sure you want to delete all annotations in the code for this example?';
		createButton: 'Yes, delete' value: true color: (self userInterfaceTheme okColor ifNil: [Color r: 0.2 g: 0.6 b: 0.8]);
		createCancelButton;
		moveToHand;
		width: 50;
		openAsTool.