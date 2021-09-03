"
This class is a SAXHandler that can track the positions of tokens. Does not support validation or entity replacement but can check wellformedness and namespaces.

"
Class {
	#name : 'Gt4XMLSAXPositionHandler',
	#superclass : 'SAXHandler',
	#category : 'GToolkit4XMLSupport-Highlighting-Highlighting'
}

{ #category : 'defaults' }
Gt4XMLSAXPositionHandler >> driverClass [
	^ Gt4XMLSAXPositionParserDriver
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> endCDataPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> endCommentPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> endDeclarationPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> endDoctypeDeclarationPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> endEntityReferencePosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> endNamePosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> endPIPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> endQuotedStringNamePosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> endQuotedStringPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> endTagPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> endXMLDeclarationPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> startCDataPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> startCommentPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> startDeclarationPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> startDoctypeDeclarationPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> startEntityReferencePosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> startNamePosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> startPIPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> startQuotedStringNamePosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> startQuotedStringPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> startTagPosition: aPosition [
]

{ #category : 'handling - positions' }
Gt4XMLSAXPositionHandler >> startXMLDeclarationPosition: aPosition [
]
