toolbuilder
buildOptionalButtonsWith: aBuilder

	| panelSpec |
	panelSpec := super buildOptionalButtonsWith: aBuilder.
	panelSpec children add: (self buildSidePaneButtonWith: aBuilder).
	^ panelSpec