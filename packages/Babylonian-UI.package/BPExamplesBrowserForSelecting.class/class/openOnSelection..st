opening
openOnSelection: aCallbackBlock

	| browser |
	browser := self new
		selectionBlock: aCallbackBlock;
		yourself.
	ToolBuilder open: browser.
	