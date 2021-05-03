private
for: aCollection do: aBlock displayingProgress: progressBlock

	^ self displayProgress
		ifFalse: [aCollection do: aBlock]
		ifTrue: [aCollection do: aBlock displayingProgress: progressBlock every: 100]