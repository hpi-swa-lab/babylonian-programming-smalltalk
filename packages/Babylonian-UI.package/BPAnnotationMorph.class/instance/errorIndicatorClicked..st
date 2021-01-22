actions
errorIndicatorClicked: aBPTrace
	
	"We simply re-run the thing assuming that it will break again."
	aBPTrace example execute
	
	"This code would be very nice to have, but unfortunately, through 
	the way we instrumented the methods, we will not get a useful debugger
	out of this.
	ToolSet default 
		debugProcess: aBPTrace exampleExecutionProcess
		context: aBPTrace recordedException signalerContext
		label: aBPTrace recordedException printString
		contents: nil
		fullView: true."
	