private - ui
addExampleNameMorph

	nameTextMorph := self 
		editFieldInitialContent: Text new
		onChange: [:str | "nop"]
		onAccept: [:str | "nop"].