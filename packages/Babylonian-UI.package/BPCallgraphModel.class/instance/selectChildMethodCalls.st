menu
selectChildMethodCalls
	
	"recursively finds all procedure calls done by the selected entry"
	| entry procedures |
	entry := self getSelectedEntry.
	procedures := Set new.
	entry children do: [:child | 
		self callgraph do: [:each | each class == BPCallgraphEntryEnter ifTrue: [
			procedures add: each asPathPart]] entry: child].
	procedures explore