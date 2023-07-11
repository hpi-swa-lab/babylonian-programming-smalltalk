object creation
createMinimizedObjects

	| tmp |	
	tmp := Dictionary new.
	objectTemplateMapping valuesDo: [:template | 
		tmp at: template put: template createMinimizedObject].
	tmp keysAndValuesDo: [:template :miniObject | 
		template correctObjectReferences: tmp for: miniObject].	

	^ {tmp at: receiverMiniTree rootTemplate. 
		argumentMiniTrees collect: [:miniTree | tmp at: miniTree rootTemplate]}