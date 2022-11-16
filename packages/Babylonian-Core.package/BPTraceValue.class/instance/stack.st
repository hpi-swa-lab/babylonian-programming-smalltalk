accessing
stack

	^ stack collect: [:memento | BPContext newFrom: memento]