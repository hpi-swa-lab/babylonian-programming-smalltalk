visualization
visualizationMorphs
	
	| morphs |

	self selectedExample
		ifNil: [morphs := {'No example selected'}]
		ifNotNil: [
			morphs := self selectedVisualizationType caseOf: {
				[#none] -> [{'No visualization selected'}].
				[#callgraph] -> [{BPBrowserSidebarVisualizationCallgraph new 
					example: self selectedExample;
					when: #browseMethod evaluate: [:ref | self triggerEvent: #browseMethod with: ref];
					buildWith: ToolBuilder default}].
				[#annotations] -> [{BPBrowserSidebarVisualizationAnnotations new 
					example: self selectedExample;
					when: #browseMethod evaluate: [:ref | self triggerEvent: #browseMethod with: ref];
					buildWith: ToolBuilder default}].
			} otherwise: [{'Visualization is not yet supported.'}]].
		
	^ morphs 
		collect: [:each | each isString
			ifFalse: [each]
			ifTrue: [TextMorph new
				contents: each;
				layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@1));
				yourself]]