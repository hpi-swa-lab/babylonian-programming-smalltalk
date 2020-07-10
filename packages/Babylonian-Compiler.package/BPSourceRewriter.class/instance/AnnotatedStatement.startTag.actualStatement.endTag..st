grammar rules
AnnotatedStatement: aNode startTag: startTag actualStatement: statement endTag: endTag
	"This means there was an assignment in the statement -> otherwise it is an annotated expression"
	^ self rewriteAssignmentNode: statement withTag: startTag