"
This is a base class for highlighters that highlight Text objects using XMLHighlights.

"
Class {
	#name : #Gt4XMLHighlighter,
	#superclass : #Object,
	#instVars : [
		'highlights',
		'defaultHighlight'
	],
	#category : 'GToolkit4XMLSupport-Highlighting-Highlighting'
}

{ #category : #accessing }
Gt4XMLHighlighter >> defaultColor [
	^ defaultHighlight color
]

{ #category : #accessing }
Gt4XMLHighlighter >> defaultColor: aTextColor [
	defaultHighlight color: aTextColor
]

{ #category : #defaults }
Gt4XMLHighlighter >> defaults [
	^ self defaultsClass new
]

{ #category : #defaults }
Gt4XMLHighlighter >> defaultsClass [
	^ Gt4XMLHighlightDefaults
]

{ #category : #private }
Gt4XMLHighlighter >> endHighlight: aHighlightOrNil position: aPosition [
	aHighlightOrNil
		ifNotNil: [aHighlightOrNil end: aPosition]
]

{ #category : #highlighting }
Gt4XMLHighlighter >> highlightText: aText [
	highlights do: [:each | each applyToText: aText]
]

{ #category : #highlighting }
Gt4XMLHighlighter >> highlightText: aText withColor: aTextColor startingAt: aPosition [
	Gt4XMLHighlightedToken new
		color: aTextColor;
		start: aPosition;
		applyToText: aText
]

{ #category : #initialization }
Gt4XMLHighlighter >> initialize [
	super initialize.

	self
		initializeHighlights;
		initializeColorsWithDefaults: self defaults.
]

{ #category : #initialization }
Gt4XMLHighlighter >> initializeColorsWithDefaults: aDefaults [
	self defaultColor: aDefaults defaultColor
]

{ #category : #initialization }
Gt4XMLHighlighter >> initializeHighlights [
	defaultHighlight := Gt4XMLHighlightedToken new.
	highlights := OrderedCollection with: defaultHighlight.
]

{ #category : #private }
Gt4XMLHighlighter >> newHighlightColor: aTextColor position: aPosition [
	^ aTextColor
		ifNotNil: [
			highlights addLast:
				(Gt4XMLHighlightedToken new
					color: aTextColor;
					start: aPosition)]
]
