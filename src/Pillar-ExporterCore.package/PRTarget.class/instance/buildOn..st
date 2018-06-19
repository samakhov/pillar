building
buildOn: aProject

	aProject contributeToPipelineBuilding: self.
	(self filesToBuildOn: aProject) do: [ :each | aProject queue nextPut: each ].
	[ aProject queue isEmpty ] whileFalse: [
		(self documentFor: aProject queue nextOrNil) buildOn: aProject ]