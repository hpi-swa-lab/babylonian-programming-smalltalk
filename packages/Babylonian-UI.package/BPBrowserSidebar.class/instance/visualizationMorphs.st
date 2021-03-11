visualization
visualizationMorphs
	
	| content |

	content := true caseOf: {
		[self selectedExample isNil] -> [	visualization := nil. 'No example selected'].
		[self selectedVisualizationType == #none] -> [visualization := nil. 'No visualization selected'].
		[true] -> [
			(visualization := self selectedVisualizationTypeClass new)
				example: self selectedExample;
				when: #browseMethod evaluate: [:ref | self triggerEvent: #browseMethod with: ref];
				when: #highlightSend evaluate: [:method :pc | 
					self triggerEvent: #highlightSend withArguments: {method . pc}];
				buildWith: ToolBuilder default]}.
		
	^ {content isString
		ifTrue: [
			TextMorph new
				contents: content;
				layoutFrame: (LayoutFrame fractions: (0@0 corner: 1@1));
				yourself]
		ifFalse: [content]}