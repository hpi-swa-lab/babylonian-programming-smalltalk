class list
toolBuilderModelsMenu: aMenu
	
	<classListMenuShifted: false>
	<menuPriority: 50>
	(self selectedClassOrMetaClass theNonMetaClass canUnderstand: #buildWith:) ifTrue: [
		aMenu 
			add: 'open tool'
			target: ToolBuilder default
			selector: #open:
			argument: self selectedClassOrMetaClass theNonMetaClass].
	
	^ aMenu