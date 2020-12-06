*Babylonian-UI-ToolBuilder
buildBPCallgraph: aSpec
	"largely copied from buildPluggableTree:"
	| widget |
	widget := BPCallgraphPluggableTreeMorph new.
	self register: widget id: aSpec name.

	widget getLabelSelector: aSpec label.
	widget getIconSelector: aSpec icon.

	widget model: aSpec model.
	widget nodeClass: aSpec nodeClass.

	widget getRootsSelector: aSpec roots.
	widget getChildrenSelector: aSpec getChildren.
	widget hasChildrenSelector: aSpec hasChildren.

	widget getSelectedSelector: aSpec getSelected.
	widget setSelectedSelector: aSpec setSelected.
	widget getSelectedPathSelector: aSpec getSelectedPath.
	widget setSelectedPathSelector: aSpec setSelectedPath.

	widget setSelectedParentSelector: aSpec setSelectedParent.

	widget getHelpSelector: aSpec help.
	widget getMenuSelector: aSpec menu.

	widget keystrokeActionSelector: aSpec keyPress.
	widget autoDeselect: aSpec autoDeselect.
	widget doubleClickSelector: aSpec doubleClick.
	
	widget dropItemSelector: aSpec dropItem.
	widget wantsDropSelector: aSpec dropAccept.
	widget dragItemSelector: aSpec dragItem.
	widget dragStartedSelector: aSpec dragStarted.
	
	widget columns: aSpec columns.
	
	"Override default scroll bar policies if needed. Widget will use preference values otherwise."
	aSpec hScrollBarPolicy ifNotNil: [:policy |
		policy caseOf: {
			[#always] -> [widget alwaysShowHScrollBar].
			[#never] -> [widget hideHScrollBarIndefinitely].
			[#whenNeeded] -> [widget showHScrollBarOnlyWhenNeeded]. } ].
	aSpec vScrollBarPolicy ifNotNil: [:policy |
		policy caseOf: {
			[#always] -> [widget alwaysShowVScrollBar].
			[#never] -> [widget hideVScrollBarIndefinitely].
			[#whenNeeded] -> [widget showVScrollBarOnlyWhenNeeded]. } ].	
	
	self setFrame: aSpec frame in: widget.
	self setLayoutHintsFor: widget spec: aSpec.
	
	parent ifNotNil:[self add: widget to: parent].
"	panes ifNotNil:[
		aSpec roots ifNotNil:[panes add: aSpec roots].
	].	"
	^widget