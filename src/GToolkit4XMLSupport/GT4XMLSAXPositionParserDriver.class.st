"
This class is a SAX driver that forwards token start/end positions to a SAXHandler. Does not support entities or validation, but does support namespaces.
"
Class {
	#name : #GT4XMLSAXPositionParserDriver,
	#superclass : #SAXParserDriver,
	#category : #'GToolkit4XMLSupport-Highlighting-Highlighting-Parser'
}

{ #category : #testing }
GT4XMLSAXPositionParserDriver >> decodesCharacters [
	^ false
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleEndCDataPosition: aPosition [
	self saxHandler endCDataPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleEndCommentPosition: aPosition [
	self saxHandler endCommentPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleEndDeclaration: aPosition [
	self saxHandler endDeclarationPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleEndDoctypeDeclarationPosition: aPosition [
	self saxHandler endDoctypeDeclarationPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleEndEntityReferencePosition: aPosition [
	self saxHandler endEntityReferencePosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleEndNamePosition: aPosition [
	self saxHandler endNamePosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleEndPIPosition: aPosition [
	self saxHandler endPIPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleEndQuotedStringNamePosition: aPosition [
	self saxHandler endQuotedStringNamePosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleEndQuotedStringPosition: aPosition [
	self saxHandler endQuotedStringPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleEndTagPosition: aPosition [
	self saxHandler endTagPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleEndXMLDeclarationPosition: aPosition [
	self saxHandler endXMLDeclarationPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleStartCDataPosition: aPosition [
	self saxHandler startCDataPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleStartCommentPosition: aPosition [
	self saxHandler startCommentPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleStartDeclaration: aPosition [
	self saxHandler startDeclarationPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleStartDoctypeDeclarationPosition: aPosition [
	self saxHandler startDoctypeDeclarationPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleStartEntityReferencePosition: aPosition [
	self saxHandler startEntityReferencePosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleStartNamePosition: aPosition [
	self saxHandler startNamePosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleStartPIPosition: aPosition [
	self saxHandler startPIPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleStartQuotedStringNamePosition: aPosition [
	self saxHandler startQuotedStringNamePosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleStartQuotedStringPosition: aPosition [
	self saxHandler startQuotedStringPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleStartTagPosition: aPosition [
	self saxHandler startTagPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionParserDriver >> handleStartXMLDeclarationPosition: aPosition [
	self saxHandler startXMLDeclarationPosition: aPosition
]

{ #category : #testing }
GT4XMLSAXPositionParserDriver >> isValidating [
	^ false
]

{ #category : #defaults }
GT4XMLSAXPositionParserDriver >> tokenizerClass [
	^ GT4XMLPositionWellFormedParserTokenizer
]
