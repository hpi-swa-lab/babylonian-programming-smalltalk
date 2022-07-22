class list
exampleInstanceClassListMenu: aMenu
	
	<classListMenuShifted: false>
	<menuPriority: 900>
	self selectedClassOrMetaClass exampleInstanceMethods ifNotEmpty: [:exampleInstanceMethods |
		exampleInstanceMethods size = 1
			ifTrue: [
				aMenu addList: #(-).
				
				self selectedClassOrMetaClass theNonMetaClass basicNew isMorph ifTrue: [
					aMenu 
						add: 'open example instance'
						target: self
						selector: #openExampleInstanceInHand:
						argument: exampleInstanceMethods first].
				
				aMenu 
					add: 'explore example instance'
					target: self
					selector: #exploreExampleInstance:
					argument: exampleInstanceMethods first.
				aMenu addList: #(-)]
			ifFalse: [ | subMenu |
				aMenu addList: #(-).
				
				self selectedClassOrMetaClass theNonMetaClass basicNew isMorph ifTrue: [
					subMenu := MenuMorph new defaultTarget: self.
					exampleInstanceMethods do: [:exampleInstanceMethod | 
						subMenu 
							add: exampleInstanceMethod exampleInstanceName
							target: self
							selector: #openExampleInstanceInHand:
							argument: exampleInstanceMethod].
					aMenu 
						add: 'open example instance'
						subMenu: subMenu].
						
				subMenu := MenuMorph new defaultTarget: self.
					exampleInstanceMethods do: [:exampleInstanceMethod | 
						subMenu 
							add: exampleInstanceMethod exampleInstanceName
							target: self
							selector: #exploreExampleInstance:
							argument: exampleInstanceMethod].
				aMenu 
					add: 'explore example instance'
					subMenu: subMenu]].
	^ aMenu