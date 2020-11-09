*Babylonian-UI-ToolBuilder
buildBPPluggableMultiColumnList: aSpec
	
	"largely copied from buildPluggableMultiColumnList:"
	| widget listClass getIndex setIndex |
	aSpec getSelected ifNil:[
		listClass := BPPluggableMultiColumnListMorph.
		getIndex := aSpec getIndex.
		setIndex := aSpec setIndex.
	] ifNotNil: [
		self error: 'not supported'.
	].
	widget := listClass on: aSpec model
				list: aSpec list
				selected: getIndex
				changeSelected: setIndex
				menu: aSpec menu
				keystroke: aSpec keyPress.
	self register: widget id: aSpec name.
	
"	widget
		dragItemSelector: aSpec dragItem;
		dropItemSelector: aSpec dropItem;
		wantsDropSelector: aSpec dropAccept;
		dragStartedSelector: aSpec dragStarted."

	self setListPropertiesFor: widget spec: aSpec.
	
	"Be sure to enable the horizontal scrollbar if not all columns are #spaceFill."
	(aSpec columnResizings anySatisfy: [:sym | sym ~= #spaceFill])
		ifTrue: [widget hScrollBarPolicy: #whenNeeded].
		
	widget
		cellPositioningForColumns: aSpec itemAlignments;
		cellInsetForColumns: aSpec itemPaddings;
		hResizingForColumns: aSpec columnResizings;
		spaceFillWeightForColumns: aSpec columnSpaceFillWeights.
		
	widget setGetBackgroundColorSelector: aSpec backgroundColor.
	
	^widget