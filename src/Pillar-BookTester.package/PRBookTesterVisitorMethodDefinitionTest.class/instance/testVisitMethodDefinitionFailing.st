tests-class/method definition
testVisitMethodDefinitionFailing
	
  | docText doc bTester |
	docText := '[[[methodDefinition=true
PRUnexistingClass >> methodTestDefinitionCreatesTest
^ ''I am a method of the class '', self class asString
]]]
'.
	doc := PRPillarParser new parse: docText.
	bTester := PRBookTesterVisitor new.
	bTester visitCodeblockMethodDefinition: doc children first. 
	self assert: bTester failedTests size equals: 1.
	self assert: bTester validTests isEmpty.