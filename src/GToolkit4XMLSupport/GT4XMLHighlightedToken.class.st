"
This class stores a highlight TextColor and 1-based start/end highlight positions.
"
Class {
	#name : #GT4XMLHighlightedToken,
	#superclass : #Object,
	#instVars : [
		'color',
		'start',
		'end'
	],
	#category : #'GToolkit4XMLSupport-Highlighting-Highlighting'
}

{ #category : #highlighting }
GT4XMLHighlightedToken >> applyToText: aText [
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
GT4XMLHighlightedToken >> color [
	^ color
]

{ #category : #accessing }
GT4XMLHighlightedToken >> color: aTextColor [
	color := aTextColor
]

{ #category : #accessing }
GT4XMLHighlightedToken >> end [
	^ end
]

{ #category : #accessing }
GT4XMLHighlightedToken >> end: anEndPosition [
	end := anEndPosition
]

{ #category : #accessing }
GT4XMLHighlightedToken >> start [
	^ start
]

{ #category : #accessing }
GT4XMLHighlightedToken >> start: aStartPosition [
	start := aStartPosition
]
