Class {
	#name : #Gt4XMLHighlightingParser,
	#superclass : #GT4XMLSAXPositionHandler,
	#instVars : [
		'highlighter',
		'encoding'
	],
	#category : #GToolkit4XMLSupport
}

{ #category : #converting }
Gt4XMLHighlightingParser >> asHighlightedText [
	| text |

	text := self input asString asText.
	highlighter highlightText: text.
	^ text.
]

{ #category : #converting }
Gt4XMLHighlightingParser >> asHighlightedTextColored: aTextColor startingAt: aPosition [
	| text |

	text := self asHighlightedText.
	highlighter
		highlightText: text
		withColor: aTextColor
		startingAt: aPosition.
	^ text.
]

{ #category : #accessing }
Gt4XMLHighlightingParser >> encoding [
	^ encoding
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> endCDataPosition: aPosition [
	highlighter endCDataHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> endCommentPosition: aPosition [
	highlighter endCommentHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> endDeclarationPosition: aPosition [
	highlighter endDeclarationHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> endDoctypeDeclarationPosition: aPosition [
	highlighter endDoctypeDeclarationHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> endEntityReferencePosition: aPosition [
	highlighter endEntityReferenceHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> endNamePosition: aPosition [
	highlighter endNameHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> endPIPosition: aPosition [
	highlighter endPIHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> endQuotedStringNamePosition: aPosition [
	highlighter endQuotedStringNameHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> endQuotedStringPosition: aPosition [
	highlighter endQuotedStringHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> endTagPosition: aPosition [
	highlighter endTagHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> endXMLDeclarationPosition: aPosition [
	highlighter endXMLDeclarationHighlightPosition: aPosition
]

{ #category : #accessing }
Gt4XMLHighlightingParser >> highlighter [
	^ highlighter
]

{ #category : #accessing }
Gt4XMLHighlightingParser >> highlighter: aHighlighter [
	highlighter := aHighlighter
]

{ #category : #initialization }
Gt4XMLHighlightingParser >> on: aStringOrStream [
	super on: aStringOrStream.
	encoding := ''.
]

{ #category : #parsing }
Gt4XMLHighlightingParser >> parsingResult [
	^ highlighter 
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> startCDataPosition: aPosition [
	highlighter startCDataHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> startCommentPosition: aPosition [
	highlighter startCommentHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> startDeclarationPosition: aPosition [
	highlighter startDeclarationHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> startDoctypeDeclarationPosition: aPosition [
	highlighter startDoctypeDeclarationHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> startEntityReferencePosition: aPosition [
	highlighter startEntityReferenceHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> startNamePosition: aPosition [
	highlighter startNameHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> startPIPosition: aPosition [
	highlighter startPIHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> startQuotedStringNamePosition: aPosition [
	highlighter startQuotedStringNameHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> startQuotedStringPosition: aPosition [
	highlighter startQuotedStringHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> startTagPosition: aPosition [
	highlighter startTagHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
Gt4XMLHighlightingParser >> startXMLDeclarationPosition: aPosition [
	highlighter startXMLDeclarationHighlightPosition: aPosition
]

{ #category : #'handling - lexical' }
Gt4XMLHighlightingParser >> xmlVersion: aVersionFloat encoding: anEncoding standalone: aBoolean [
	encoding := anEncoding
]
