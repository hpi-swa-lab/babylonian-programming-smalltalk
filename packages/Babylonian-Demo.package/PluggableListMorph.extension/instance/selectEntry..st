*Babylonian-Demo
selectEntry: aString
	<exampleNamed: 'some example 95' self: #(#object #'71b8bf22-123a-2640-a36f-68438db1ad0b') with: '''AST-Core'''>
	"Not for production use, breaks when list is filtered"
	self changeModelSelection: (list indexOf: aString) 