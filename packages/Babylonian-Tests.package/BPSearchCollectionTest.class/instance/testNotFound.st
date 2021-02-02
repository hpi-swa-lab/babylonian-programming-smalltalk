tests
testNotFound
	"Generated from an example, do not modify"

	self assert: (BPSearchCollection newFrom: (1 to: 10)) equals: ((BPSearchCollection numbersUpTo10) binarySearch: 20)