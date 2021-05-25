mocking
addInstVar: instVarNumber for: receiverObject

	receiverMockTree addInstVar: instVarNumber for: receiverObject.
	argumentsMockTrees do: [:argumentMock | argumentMock addInstVar: instVarNumber for: receiverObject].