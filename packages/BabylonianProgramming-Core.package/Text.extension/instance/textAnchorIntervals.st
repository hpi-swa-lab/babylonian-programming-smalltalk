*BabylonianProgramming-Core
textAnchorIntervals
 
	| intervals interval |
	intervals := Dictionary new.
	"<bpProbe id: 2337721>"runs"</bpProbe>" withStartStopAndValueDo: [:start :stop :attribs | 
			"<bpProbe id: 2692154>"attribs"</bpProbe>" do: [:attrib | 
				attrib anchoredMorph ifNotNil: [
					interval := intervals at: attrib ifAbsent: [start to: stop].
					intervals at: attrib put: (interval start to: stop)]]].	
	^ "<bpProbe id: 3872433>"intervals"</bpProbe>"