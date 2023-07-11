object creation
createTemplateCollection

	templateCollection := receiver collect: [:each | self ensureTemplateFor: each]