mocking
blacklistInstVar: instVarNumber for: receiverObject

	receiverMockTree blacklistInstVar: instVarNumber for: receiverObject.
	argumentsMockTrees do: [:argumentMock | argumentMock blacklistInstVar: instVarNumber for: receiverObject].