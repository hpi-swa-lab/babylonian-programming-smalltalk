examples
addExampleWith: receiver and: arguments

	| receiverSpecimen argumentSpecimen example |

	receiverSpecimen := BPSpecimenCopy newWithSpecimen: receiver.
	argumentSpecimen := arguments collect: [:argumentObject | 
			BPSpecimenCopy newWithSpecimen: argumentObject].

	example := self method bpNewExampleFrom: BPMethodExample.
	example receiverConstructor: receiverSpecimen.
	argumentSpecimen withIndexDo: [:specimen :index |
		example argumentScripts at: index put: specimen]