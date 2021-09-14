drawing
drawBranchesOn: aCanvas number: branchLevel angle: aDegreesAngle root: rootPoint branchWidth: branchWidth
	<exampleNamed: 'some example 45' setUp: '(ActiveWorld submorphNamed: #demo) form fillWhite.' tearDown: '(ActiveWorld submorphNamed: #demo) changed' self: 'BPTree new
	extent: 400@400; 
	color: Color black;
	yourself' with: '(ActiveWorld submorphNamed: ''demo'') form getCanvas' with: '0' with: '0' with: '200@400 ' with: '15'>
      | length tipPoint |
	branchLevel = 0
		ifTrue: [length := self stemHeight]
		ifFalse: [length := (self stemHeight / 3 to: self stemHeight / 2) atRandom * (1 - (branchLevel / 20))].
	length := length rounded.
  
	tipPoint := (rootPoint - (0@length)) 
		rotateBy: aDegreesAngle degreesToRadians 
		about: rootPoint. 
     
	aCanvas 
		line: rootPoint 
		to: tipPoint
		width: branchWidth ceiling
		color: self color.	
		 
	branchLevel > 3 ifTrue: [
		blossomPointsDuringDrawing 
			add: rootPoint;
			add: tipPoint].

	branchLevel < 6 
		ifTrue: [
			self 
				drawBranchesOn: aCanvas 
				number: branchLevel + 1 
				angle: aDegreesAngle + (-30 to: -10) atRandom
				root: tipPoint + (branchWidth / 6 @ 0) 
				branchWidth: branchWidth * (1/2). 
			self 
				drawBranchesOn: aCanvas 
				number: branchLevel + 1 
				angle: aDegreesAngle + (10 to: 30) atRandom
				root: tipPoint - (branchWidth / 6 @ 0) 
				branchWidth: branchWidth * (1/2)]
		ifFalse: [
			branchLevel < 8 ifTrue: [
				self 
					drawBranchesOn: aCanvas 
					number: branchLevel + 1 
					angle: aDegreesAngle + (-5 to: 20) atRandom
					root: tipPoint + (branchWidth / 3 @ 0)  
					branchWidth: branchWidth * (2/3)]].
 
	aCanvas