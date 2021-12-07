toolbuilder
buildDefaultBrowserWith: aBuilder

	| browser maxVert maxHor windowSpec |
	self flag: #todo. "Is there a possibility with calling 'super buildDefaultBrowserWith: aBuilder.' to not duplicate code ???"

	"=== BEGIN DUPLICATE FROM BROWSER with adjusted layout frames ==="
	maxHor := 0.8.
	maxVert := self wantsOptionalButtons ifTrue:[0.42] ifFalse:[0.5].
	
	windowSpec := self buildWindowWith: aBuilder specs: {
		(0@0 corner: 0.2@maxVert) -> [self buildSystemCategoryListWith: aBuilder].
		(self classListFrame: maxVert fromTop: 0 fromLeft: 0.2 width: 0.2) -> [self buildClassListWith: aBuilder].
		(self switchesFrame: maxVert fromLeft: 0.2 width: 0.2) -> [self buildSwitchesWith: aBuilder].
		(0.4@0 corner: 0.6@maxVert) -> [self buildMessageCategoryListWith: aBuilder].
		(0.6@0 corner: maxHor@maxVert) -> [self buildMessageListWith: aBuilder].
		(0@maxVert corner: maxHor@1) -> [self buildCodePaneWith:  aBuilder].
		"extention:"
		(maxHor@0 corner: 1@1) -> [self buildSidePaneWith: aBuilder].
	}.
	
	self setMultiWindowFor: windowSpec.
	browser := aBuilder build: windowSpec.
	"=== END DUPLICATE FROM BROWSER ==="
	
	"=== BEGIN OLD CODE ==="
	"browser := super buildDefaultBrowserWith: aBuilder."
	
	BPStyler withSidebarAnnotations: [
		(browser submorphNamed: #codePaneTextMorph) scroller submorphs first
			margins: (3@0 corner: 385@0).
		browser extent: 900@600].
	"=== END OLD CODE ==="
	
	self initializeSidePaneFrom: browser.
		
	^ browser