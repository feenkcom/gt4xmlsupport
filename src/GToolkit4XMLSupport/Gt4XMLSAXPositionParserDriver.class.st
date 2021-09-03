"
This class is a SAX driver that forwards token start/end positions to a SAXHandler. Does not support entities or validation, but does support namespaces.

"
Class {
	#name : 'Gt4XMLSAXPositionParserDriver',
	#superclass : 'SAXParserDriver',
	#category : 'GToolkit4XMLSupport-Highlighting-Highlighting'
}

{ #category : 'testing' }
Gt4XMLSAXPositionParserDriver >> decodesCharacters [
	^ false
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleEndCDataPosition: aPosition [
	self saxHandler endCDataPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleEndCommentPosition: aPosition [
	self saxHandler endCommentPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleEndDeclaration: aPosition [
	self saxHandler endDeclarationPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleEndDoctypeDeclarationPosition: aPosition [
	self saxHandler endDoctypeDeclarationPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleEndEntityReferencePosition: aPosition [
	self saxHandler endEntityReferencePosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleEndNamePosition: aPosition [
	self saxHandler endNamePosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleEndPIPosition: aPosition [
	self saxHandler endPIPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleEndQuotedStringNamePosition: aPosition [
	self saxHandler endQuotedStringNamePosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleEndQuotedStringPosition: aPosition [
	self saxHandler endQuotedStringPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleEndTagPosition: aPosition [
	self saxHandler endTagPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleEndXMLDeclarationPosition: aPosition [
	self saxHandler endXMLDeclarationPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleStartCDataPosition: aPosition [
	self saxHandler startCDataPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleStartCommentPosition: aPosition [
	self saxHandler startCommentPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleStartDeclaration: aPosition [
	self saxHandler startDeclarationPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleStartDoctypeDeclarationPosition: aPosition [
	self saxHandler startDoctypeDeclarationPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleStartEntityReferencePosition: aPosition [
	self saxHandler startEntityReferencePosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleStartNamePosition: aPosition [
	self saxHandler startNamePosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleStartPIPosition: aPosition [
	self saxHandler startPIPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleStartQuotedStringNamePosition: aPosition [
	self saxHandler startQuotedStringNamePosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleStartQuotedStringPosition: aPosition [
	self saxHandler startQuotedStringPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleStartTagPosition: aPosition [
	self saxHandler startTagPosition: aPosition
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionParserDriver >> handleStartXMLDeclarationPosition: aPosition [
	self saxHandler startXMLDeclarationPosition: aPosition
]

{ #category : 'testing' }
Gt4XMLSAXPositionParserDriver >> isValidating [
	^ false
]

{ #category : 'defaults' }
Gt4XMLSAXPositionParserDriver >> tokenizerClass [
	^ Gt4XMLPositionWellFormedParserTokenizer
]
