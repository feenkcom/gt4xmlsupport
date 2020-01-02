"
This class is a SAXHandler that can track the positions of tokens. Does not support validation or entity replacement but can check wellformedness and namespaces.
"
Class {
	#name : #GT4XMLSAXPositionHandler,
	#superclass : #SAXHandler,
	#category : #'GToolkit4XMLSupport-Highlighting-Highlighting-Parser'
}

{ #category : #defaults }
GT4XMLSAXPositionHandler >> driverClass [
	^ GT4XMLSAXPositionParserDriver
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> endCDataPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> endCommentPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> endDeclarationPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> endDoctypeDeclarationPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> endEntityReferencePosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> endNamePosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> endPIPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> endQuotedStringNamePosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> endQuotedStringPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> endTagPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> endXMLDeclarationPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> startCDataPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> startCommentPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> startDeclarationPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> startDoctypeDeclarationPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> startEntityReferencePosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> startNamePosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> startPIPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> startQuotedStringNamePosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> startQuotedStringPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> startTagPosition: aPosition [
]

{ #category : #'handling - positions' }
GT4XMLSAXPositionHandler >> startXMLDeclarationPosition: aPosition [
]
