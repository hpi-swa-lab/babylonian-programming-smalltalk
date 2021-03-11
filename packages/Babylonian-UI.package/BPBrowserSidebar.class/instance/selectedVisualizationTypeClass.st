private
selectedVisualizationTypeClass

	^ self selectedVisualizationType caseOf: {
				[#callgraph] -> [BPBrowserSidebarVisualizationCallgraph].
				[#annotations] -> [BPBrowserSidebarVisualizationAnnotations].
				[#methodSet] -> [BPBrowserSidebarVisualizationExecutedMethods].
			}.