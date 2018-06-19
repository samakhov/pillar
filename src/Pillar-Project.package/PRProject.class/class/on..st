instance creation
on: aDirectory

	^ self new
		baseDirectory: aDirectory;
		queue: WaitfreeQueue new;
		yourself