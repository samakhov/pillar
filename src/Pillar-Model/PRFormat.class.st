"
A styling format 
"
Class {
	#name : #PRFormat,
	#superclass : #PRDocumentGroup,
	#category : 'Pillar-Model-Document'
}

{ #category : #visiting }
PRFormat >> accept: aVisitor [
	<ignoreForCoverage "This method is ignored for test coverage because it is overriden in all subclasses and these subclasses don't need to do a super-send.">
	aVisitor visitFormat: self
]
