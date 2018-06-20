instance-creation
withContext: aContext

	| inst |
	inst := super withContext: aContext.
	inst workingDirectory: aContext baseDirectory.
	inst project: aContext.
	^ inst