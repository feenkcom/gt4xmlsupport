"
This is a base class for storing the default highlight TextColors used by a highlighter. It gets the initial defaults from Shout text styling.

"
Class {
	#name : #Gt4XMLHighlightDefaults,
	#superclass : #Object,
	#classInstVars : [
		'defaultDefaultColor',
		'uiTheme'
	],
	#category : 'GToolkit4XMLSupport-Highlighting-Highlighting'
}

{ #category : #accessing }
Gt4XMLHighlightDefaults class >> defaultDefaultColor [
	^ defaultDefaultColor
		ifNil: [defaultDefaultColor := self textColorForShoutProperty: #default]
]

{ #category : #accessing }
Gt4XMLHighlightDefaults class >> defaultDefaultColor: aTextColor [
	defaultDefaultColor := aTextColor
]

{ #category : #'class initialization' }
Gt4XMLHighlightDefaults class >> initialize [
	"self initialize"

	self resetDefaults
]

{ #category : #'instance creation' }
Gt4XMLHighlightDefaults class >> new [
	"if the theme was changed since last initialization, reset the defaults"
	self uiTheme = Smalltalk ui theme
		ifFalse: [self resetDefaults].

	^ super new.
]

{ #category : #'class initialization' }
Gt4XMLHighlightDefaults class >> resetDefaults [
	defaultDefaultColor := nil
]

{ #category : #private }
Gt4XMLHighlightDefaults class >> textColorForShoutProperty: aShoutProperty [
	^ TextColor color:
		(((SHTextStylerST80 new attributesFor: aShoutProperty)
			detect: [:each | each respondsTo: #color]
			ifNone: [^ nil]) color)
]

{ #category : #private }
Gt4XMLHighlightDefaults class >> uiTheme [
	^ uiTheme ifNil: [uiTheme := Smalltalk ui theme]
]

{ #category : #defaults }
Gt4XMLHighlightDefaults >> defaultColor [
	^ self class defaultDefaultColor
]
