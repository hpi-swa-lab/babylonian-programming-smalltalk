as yet unclassified
duck
	
    | schnabel eye |
    schnabel := EllipseMorph new
        extent: 15@6;
        color: Color orange;
        borderWidth: 0;
        position: 3@12;
        yourself.
    eye := CircleMorph new
        extent: 3@3;
        color: Color black;
        borderWidth: 0;
        yourself.
    
    ^ self new
		type: 'duck';
		extent: 20@20;
		color: Color yellow;
		borderWidth: 0;
		addAllMorphs: {schnabel . eye position: 5@5 . eye shallowCopy position: 14@5};
		yourself