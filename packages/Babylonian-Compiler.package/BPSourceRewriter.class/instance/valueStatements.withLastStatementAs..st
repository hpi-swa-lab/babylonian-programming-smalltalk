grammar rules
valueStatements: statements withLastStatementAs: aBlock

	| aNode result offset |	
	aNode := statements children first.
	"----------------- copied from conservative source rewriter>>defaultExpression----------"
	result := aNode interval contents.
	offset := 0.
	"----------------- changed ---------------------------"
	aNode children withIndexDo: [:child :index | | newChildText relativeChildInterval |
		newChildText := self value: child.
		index = aNode children size ifTrue: [newChildText := aBlock value: newChildText].
	"----------------- changed ---------------------------"
		newChildText ~= child interval contents ifTrue: [
			"This is necessary as the child nodes all have absolute
			intervals (with respect to the overall input string) but we only
			manipulate the string of the current node."
			relativeChildInterval := (child interval start - aNode interval start) + 1 to:
				(child interval end - aNode interval start) + 1.
			result := (result copyFrom: 1 to: relativeChildInterval start - 1 + offset) ,
				newChildText ,
				(result copyFrom: ((relativeChildInterval stop + 1 + offset) min: result size + 1) to: result size).
			offset := offset + (newChildText size - relativeChildInterval size)]].
	^ result
	"----------------- copied from conservative source rewriter>>defaultExpression----------"