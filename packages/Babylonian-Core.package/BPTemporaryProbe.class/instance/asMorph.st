morphic
asMorph

	"We could also avoid generating this morph at all, 
	but this way the assumption that there always is a 
	morph for an annotation still holds."
	^ super asMorph
		vResizing: #rigid;
		hResizing: #rigid;
		extent: 0@0;
		visible: false;
		yourself