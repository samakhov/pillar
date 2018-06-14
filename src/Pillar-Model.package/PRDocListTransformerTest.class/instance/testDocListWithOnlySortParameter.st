private
testDocListWithOnlySortParameter
	| doc documentGroup sections |
	doc := PRDocument new 
				add: 
				(PRText new 
					text: 'You');
				add:
				(PRDocListAnnotation new 
					parameterAt: 'directory' put: 'blogs';
					parameterAt: 'sort' put: 'name';
					yourself);
				yourself.
				
				
	((PRDocListTransformer withContext: (PRProject on: testingFileSystem)) start: doc).
	
	documentGroup := doc children second.
	
	sections := documentGroup children.

	self assert: sections size equals: 12.
	
	self assert: sections first children first text equals: 'Okay'.