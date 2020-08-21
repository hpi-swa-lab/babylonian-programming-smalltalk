private - ui
checkAndConvertValuesMorphIfNecessary: valuesMorph
	
	| pane |
	pane := self newScrollPane.
	pane height: valuesMorph height + self scrollBarSize.
	^ pane