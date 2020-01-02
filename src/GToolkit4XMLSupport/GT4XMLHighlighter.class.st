"
This is a base class for highlighters that highlight Text objects using XMLHighlights.
"
Class {
	#name : #GT4XMLHighlighter,
	#superclass : #Object,
	#instVars : [
		'highlights',
		'defaultHighlight'
	],
	#category : #'GToolkit4XMLSupport-Highlighting-Highlighting'
}

{ #category : #accessing }
GT4XMLHighlighter >> defaultColor [
	^ defaultHighlight color
]

{ #category : #accessing }
GT4XMLHighlighter >> defaultColor: aTextColor [
	defaultHighlight color: aTextColor
]

{ #category : #defaults }
GT4XMLHighlighter >> defaults [
	^ self defaultsClass new
]

{ #category : #defaults }
GT4XMLHighlighter >> defaultsClass [
	^ GT4XMLHighlightDefaults
]

{ #category : #private }
GT4XMLHighlighter >> endHighlight: aHighlightOrNil position: aPosition [
	aHighlightOrNil
		ifNotNil: [aHighlightOrNil end: aPosition]
]

{ #category : #highlighting }
GT4XMLHighlighter >> highlightText: aText [
	highlights do: [:each | each applyToText: aText]
]

{ #category : #highlighting }
GT4XMLHighlighter >> highlightText: aText withColor: aTextColor startingAt: aPosition [
	GT4XMLHighlightedToken new
		color: aTextColor;
		start: aPosition;
		applyToText: aText
]

{ #category : #initialization }
GT4XMLHighlighter >> initialize [
	super initialize.

	self
		initializeHighlights;
		initializeColorsWithDefaults: self defaults.
]

{ #category : #initialization }
GT4XMLHighlighter >> initializeColorsWithDefaults: aDefaults [
	self defaultColor: aDefaults defaultColor
]

{ #category : #initialization }
GT4XMLHighlighter >> initializeHighlights [
	defaultHighlight := GT4XMLHighlightedToken new.
	highlights := OrderedCollection with: defaultHighlight.
]

{ #category : #private }
GT4XMLHighlighter >> newHighlightColor: aTextColor position: aPosition [
	^ aTextColor
		ifNotNil: [
			highlights addLast:
				(GT4XMLHighlightedToken new
					color: aTextColor;
					start: aPosition)]
]
