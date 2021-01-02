running
setUp

	compiledMethod := self class compileSilently: 'mockMethod
	<exampleNamed: ''basic''>
2 + "<bpProbe id: 123>"3"</bpProbe>"'.
	method := self class>>#mockMethod.	
	browser := BPBrowser new
		setClass: self class selector: #mockMethod;
		yourself.