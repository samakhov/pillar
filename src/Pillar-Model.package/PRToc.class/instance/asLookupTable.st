converting
asLookupTable
	| dictionary |
	dictionary := CTEnvironment new.
	dictionary propertyAt: #name put: name.
	dictionary propertyAt: #level put: level.
	self hasFileReference ifTrue: [ 
		dictionary
			propertyAt: #href
			put: '/', (self changeFileExtension: fileReference) , '#' , self name asLowercase.
	].
	dictionary propertyAt: #hasChildren put: self children isNotEmpty.
	dictionary propertyAt: #children put: (self children collect: [ :each | 
		each asLookupTable
			parent: self;
			yourself ]).
	^ dictionary