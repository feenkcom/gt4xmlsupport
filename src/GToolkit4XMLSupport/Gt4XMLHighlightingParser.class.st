"
This class is an XML parser that can convert its input to Text objects styled with highlighting after parsing.
"
Class {
	#name : #GT4XMLHighlightingParser,
	#superclass : #GT4XMLSAXPositionHandler,
	#instVars : [
		'highlighter',
		'encoding'
	],
	#category : #'GToolkit4XMLSupport-Highlighting-Highlighting-Parser'
}

{ #category : #converting }
GT4XMLHighlightingParser >> asHighlightedText [
	| text |

	text := self input asString asText.
	highlighter highlightText: text.
	^ text.
]

{ #category : #converting }
GT4XMLHighlightingParser >> asHighlightedTextColored: aTextColor startingAt: aPosition [
	| text |

	text := self asHighlightedText.
	highlighter
		highlightText: text
		withColor: aTextColor
		startingAt: aPosition.
	^ text.
]

{ #category : #accessing }
GT4XMLHighlightingParser >> encoding [
	^ encoding
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> endCDataPosition: aPosition [
	highlighter endCDataHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> endCommentPosition: aPosition [
	highlighter endCommentHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> endDeclarationPosition: aPosition [
	highlighter endDeclarationHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> endDoctypeDeclarationPosition: aPosition [
	highlighter endDoctypeDeclarationHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> endEntityReferencePosition: aPosition [
	highlighter endEntityReferenceHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> endNamePosition: aPosition [
	highlighter endNameHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> endPIPosition: aPosition [
	highlighter endPIHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> endQuotedStringNamePosition: aPosition [
	highlighter endQuotedStringNameHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> endQuotedStringPosition: aPosition [
	highlighter endQuotedStringHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> endTagPosition: aPosition [
	highlighter endTagHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> endXMLDeclarationPosition: aPosition [
	highlighter endXMLDeclarationHighlightPosition: aPosition
]

{ #category : #accessing }
GT4XMLHighlightingParser >> highlighter [
	^ highlighter
]

{ #category : #initialization }
GT4XMLHighlightingParser >> on: aStringOrStream [
	super on: aStringOrStream.

	highlighter := GT4XMLDocumentHighlighter new.
	encoding := ''.
]

{ #category : #parsing }
GT4XMLHighlightingParser >> parsingResult [
	^ self asHighlightedText
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> startCDataPosition: aPosition [
	highlighter startCDataHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> startCommentPosition: aPosition [
	highlighter startCommentHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> startDeclarationPosition: aPosition [
	highlighter startDeclarationHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> startDoctypeDeclarationPosition: aPosition [
	highlighter startDoctypeDeclarationHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> startEntityReferencePosition: aPosition [
	highlighter startEntityReferenceHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> startNamePosition: aPosition [
	highlighter startNameHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> startPIPosition: aPosition [
	highlighter startPIHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> startQuotedStringNamePosition: aPosition [
	highlighter startQuotedStringNameHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> startQuotedStringPosition: aPosition [
	highlighter startQuotedStringHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> startTagPosition: aPosition [
	highlighter startTagHighlightPosition: aPosition
]

{ #category : #'handling - positions' }
GT4XMLHighlightingParser >> startXMLDeclarationPosition: aPosition [
	highlighter startXMLDeclarationHighlightPosition: aPosition
]

{ #category : #'handling - lexical' }
GT4XMLHighlightingParser >> xmlVersion: aVersionFloat encoding: anEncoding standalone: aBoolean [
	encoding := anEncoding
]
