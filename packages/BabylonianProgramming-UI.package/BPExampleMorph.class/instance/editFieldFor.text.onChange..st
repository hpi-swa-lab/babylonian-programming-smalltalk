private - ui
editFieldFor: model text: getTextSelector onChange: setTextSelector

	^ self
		editFieldFor: model
		text: getTextSelector
		onChange: setTextSelector
		onAccept: setTextSelector