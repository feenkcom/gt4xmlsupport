"
This class stores a highlight TextColor and 1-based start/end highlight positions.

"
Class {
	#name : #Gt4XMLHighlightedToken,
	#superclass : #Object,
	#instVars : [
		'color',
		'start',
		'end'
	],
	#category : #'GToolkit4XMLSupport-Highlighting-Highlighting'
}

{ #category : #highlighting }
Gt4XMLHighlightedToken >> applyToText: aText [
	| attributeStart attributeEnd |

	"must be bounded between 1 and aText size to avoid errors if the text
	being highlighted was truncated by printString/asString"
	attributeStart := (self start ifNil: [1]) max: 1.
	attributeEnd := (self end ifNil: [aText size]) min: aText size.
	attributeStart <= attributeEnd
		ifTrue: [
			aText
				addAttribute: self color
				from: attributeStart
				to: attributeEnd].
]

{ #category : #accessing }
Gt4XMLHighlightedToken >> color [
	^ color
]

{ #category : #accessing }
Gt4XMLHighlightedToken >> color: aTextColor [
	color := aTextColor
]

{ #category : #accessing }
Gt4XMLHighlightedToken >> end [
	^ end
]

{ #category : #accessing }
Gt4XMLHighlightedToken >> end: anEndPosition [
	end := anEndPosition
]

{ #category : #accessing }
Gt4XMLHighlightedToken >> start [
	^ start
]

{ #category : #accessing }
Gt4XMLHighlightedToken >> start: aStartPosition [
	start := aStartPosition
]
