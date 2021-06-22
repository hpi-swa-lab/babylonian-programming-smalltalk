eval
howManyTestsAreFound
	
	| allFoundTests classes categories environment |
	
	allFoundTests := OrderedCollection new.
	"categories := {'Morphic-Basic' asSymbol}."
	"categories := {'WebClient-Core' asSymbol}."
	
	"these two crash"
	"categories := #(#'Kernel-Classes' #'Kernel-Exceptions' #'Kernel-Exceptions-Kernel' #'Kernel-Methods' #'Kernel-Models' #'Kernel-Numbers' #'Kernel-Numbers-Exceptions' #'Kernel-Objects' #'Kernel-Pools' #'Kernel-Processes' #'Kernel-Processes-Variables').	"
		
	"Abstract and support and unordered crash, text leads to an error"
	"categories :=  #(#'Collections-Abstract' #'Collections-Arrayed' #'Collections-Cache' #'Collections-Exceptions' #'Collections-Heap' #'Collections-Sequenceable' #'Collections-SortFunctions' #'Collections-Stack' #'Collections-Streams' #'Collections-Strings' #'Collections-Support' #'Collections-Text' #'Collections-Unordered' #'Collections-Weak')."
		
	"categories := #(#'Morphic-Balloon' #'Morphic-Basic' #'Morphic-Basic-NewCurve' #'Morphic-Borders' #'Morphic-Collections-Arrayed' #'Morphic-Demo' #'Morphic-Events' #'Morphic-Explorer' #'Morphic-Kernel' #'Morphic-Layouts' #'Morphic-Menus' #'Morphic-Menus-DockingBar' #'Morphic-Pluggable Widgets' #'Morphic-Sound-Synthesis' #'Morphic-Support' #'Morphic-Text Support' #'Morphic-TrueType' #'Morphic-Widgets' #'Morphic-Windows' #'Morphic-Worlds')."
	"categories :=  #(#'Regex-Core' #'Regex-Exceptions')."
	"categories :=  #(#'Chronology-Core')."
	
	"categories :=   #(#'ToolBuilder-Kernel' #'ToolBuilder-Morphic' #'ToolBuilder-SUnit' #'ToolBuilder-MVC' #'ToolBuilder-Morphic-Tools')."
	"categories :=   #(#'Tools-ArchiveViewer' #'Tools-Base' #'Tools-Browser' #'Tools-Changes' #'Tools-Debugger' #'Tools-Explorer' #'Tools-File Contents Browser' #'Tools-FileList' #'Tools-Inspector' #'Tools-Menus' #'Tools-MethodFinder' #'Tools-Process Browser')."
	"categories :=   #(#'Graphics-Display Objects' #'Graphics-External-Ffenestri' #'Graphics-Files' #'Graphics-Fonts' #'Graphics-Primitives' #'Graphics-Text' #'Graphics-Transformations')."
	"categories :=   #(#'Network-Exceptions' #'Network-Kernel' #'Network-MailSending' #'Network-Protocols' #'Network-RFC822' #'Network-RemoteDirectory' #'Network-URI' #'Network-UUID' #'Network-Url')."
	
	environment := self environment.
	classes := categories gather: [ :category |
		(environment organization listAtCategoryNamed: category)
			collect: [ :each | environment valueOf: each ]].
	classes := classes asSet.
	"classes := {WebClient}."
	"classes := {OrderedCollection}."
	
	Transcript clear.
	
	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			(compiledMethod isKindOf: MsrMethodWrapper)
				ifTrue: [class methodDict at: methodSelector put: compiledMethod unwrappedMethod]]].
	
	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			(class = Mutex
				or: [compiledMethod isAbstract]
					or: [methodSelector = #value: and: [class = BlockClosure]])
				ifFalse: [
					allFoundTests add: (self allTestVariantsFor: compiledMethod for: methodSelector for: class)]]].
	
	self determineCoverageFor: classes forTestClasses: self allTestClassesWithBlacklist in: allFoundTests.
	
	classes do: [:class |
		class methodDict keysAndValuesDo: [:methodSelector :compiledMethod |
			(compiledMethod isKindOf: MsrMethodWrapper)
				ifTrue: [class methodDict at: methodSelector put: compiledMethod unwrappedMethod]]].
	
	self writeIntoFile: allFoundTests.
	
	Transcript open.
	Transcript show: 'done'.
	
	^ allFoundTests