as yet unclassified
exampleTextAnchor

	| r t |
	r := RectangleMorph new.
	t := (Text fromString: 'Hier ist ein ') ,(Text string: Character startOfHeader asString attribute: (BPTextAnchor new anchoredMorph: r)) , (Text fromString:'Morph der 
	Kontextinformationen anzeigt').