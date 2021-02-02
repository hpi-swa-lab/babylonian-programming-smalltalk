private
addAndLog: aNumber
	<testRef: 'BPTestExamplesClassTest>>#testSmallNumber'>
<testRef: 'BPTestExamplesClassTest>>#testLargeNumber'>
	| result |  
	1 to: 100 do: [ :i | result := self + aNumber].
	"Transcript showln: result."
	 ^ result