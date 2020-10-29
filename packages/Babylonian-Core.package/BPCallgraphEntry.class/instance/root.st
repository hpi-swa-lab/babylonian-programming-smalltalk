as yet unclassified
root

	| root |
	root := self.	
	[root parent notNil] whileTrue: [root := root parent].
	^ root