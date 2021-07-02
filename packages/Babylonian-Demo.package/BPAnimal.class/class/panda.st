as yet unclassified
panda
	
    | ear eye |
    ear := CircleMorph new
        extent: 10@10;
        color: Color black;
        borderWidth: 0;
        yourself.
    eye := CircleMorph new
        extent: 5@5;
        color: Color black;
        borderWidth: 0;
        yourself.
    
    ^ self new
		type: 'panda';
		extent: 20@20;
		color: Color white;
		borderWidth: 0;
		addAllMorphsBack: {ear position: (-3)@(-3) . (ear shallowCopy) position: 15@(-3)};
		addAllMorphsFront: {eye position: 5@5 . eye shallowCopy position: 14@5};
		yourself